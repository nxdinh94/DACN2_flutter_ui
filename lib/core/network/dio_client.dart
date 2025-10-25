import 'dart:async';

import 'package:dio/dio.dart';
import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';
import 'package:kit/core/utils/app_utils.dart';
import 'package:kit/core/utils/auth_token_services.dart';

import '../logger/logger.dart';

@lazySingleton
class DioClient {
  late final Dio _dio;
  final AppLogger _logger = AppLogger();
  final AuthTokenServices authTokenServices;
  Completer<void>? _refreshCompleter;


  DioClient({required this.authTokenServices}) {
    _dio = Dio();
    _dio.options = BaseOptions(
      connectTimeout: const Duration(seconds: 10),
      receiveTimeout: const Duration(seconds: 10),
      sendTimeout: const Duration(seconds: 10),
      responseType: ResponseType.json,
      baseUrl: AppConstants.baseUrl
    );
    _setupInterceptors();
  }
  Future<Response<dynamic>> _retryRequest(RequestOptions requestOptions, String newRefreshToken) async {
    final options = Options(
      method: requestOptions.method,
      headers: requestOptions.headers,
      contentType: requestOptions.contentType,
      responseType: requestOptions.responseType,
    );
    if(requestOptions.path == AppConstants.logoutEndpoint){
      requestOptions.data['refreshToken'] = newRefreshToken;
    }

    return _dio.request<dynamic>(
      requestOptions.path,
      data: requestOptions.data,
      queryParameters: requestOptions.queryParameters,
      options: options,
    );
  }

  void _setupInterceptors() {
    _dio.interceptors.add(
      InterceptorsWrapper(
        onRequest: (options, handler) async {
          _logger.info('Request: ${options.method} ${options.path}');
          final token = await authTokenServices.getAccessToken();
          options.headers['Authorization'] = 'Bearer $token';
          handler.next(options);
        },
        onResponse: (response, handler) {
          _logger.info('Response: ${response.statusCode} ${response.requestOptions.path}');
          handler.next(response);
        },
        onError: (DioException error, handler) async {
          final response = error.response;
          _logger.error('Response: ${error.message} ${error.response?.data}');
          if (response != null &&
              response.statusCode == 401 &&
              response.data is Map &&
              response.data['code'] == 'TOKEN_EXPIRED') {
            // Nếu đang refresh rồi → chờ nó xong
            if (_refreshCompleter != null) {
              _logger.info('Waiting for existing refresh token process...');
              await _refreshCompleter!.future;
            } else {
              // Bắt đầu refresh mới
              _refreshCompleter = Completer();

              try {
                _logger.info('Refreshing access token...');
                final refreshToken = await authTokenServices.getRefreshToken();

                if (refreshToken == null) {
                  _refreshCompleter!.complete();
                  _refreshCompleter = null;
                  return handler.next(error);
                }

                // Dùng Dio tạm, không interceptor
                final tempDio = Dio(BaseOptions(baseUrl: AppConstants.baseUrl));

                final refreshResponse = await tempDio.post(
                  AppConstants.refreshTokenEndpoint,
                  data: {'refreshToken': refreshToken},
                );

                final newAccess = refreshResponse.data['data']['accessToken'];
                final newRefresh = refreshResponse.data['data']['refreshToken'];

                await authTokenServices.saveBothToken(newAccess, newRefresh);
                _dio.options.headers['Authorization'] = 'Bearer $newAccess';
                _logger.info('Token refreshed successfully.');

                _refreshCompleter!.complete();
              } catch (e) {
                _refreshCompleter!.complete();
                _logger.error('Refresh token failed: $e');
                return handler.next(error);
              } finally {
                _refreshCompleter = null;
              }
            }

            // Sau khi refresh xong → retry request cũ
            final newRefreshToken = await authTokenServices.getRefreshToken() ?? '';
            final cloned = await _retryRequest(error.requestOptions, newRefreshToken);
            return handler.resolve(cloned);
          }

          handler.next(error);
        },
      )
    );
  }

  Future<Response> get(
    String path, {
    Map<String, dynamic>? queryParameters,
    Options? options,
  }) async {
    try {
      return await _dio.get(
        path,
        queryParameters: queryParameters,
        options: options,
      );
    } catch (e) {
      _logger.error('GET request failed: $path', error: e);
      rethrow;
    }
  }

  Future<Either<Exception, Response>> post(
    String path, {
    dynamic data,
    Map<String, dynamic>? queryParameters,
    Options? options,
  }) async {
    return TaskEither<Exception, Response>.tryCatch(
      () async => await _dio.post(
        path,
        data: data,
        queryParameters: queryParameters,
        options: options,
      ),
      (error, stackTrace) {
        // Optional: log or transform DioException to your own Failure type
        return error is Exception ? error : Exception(error.toString());
      },
    ).run();
  }

  Future<Response> put(
    String path, {
      dynamic data, Map<String, dynamic>? queryParameters, Options? options,
    }) async {
    try {
      return await _dio.put(
        path,
        data: data,
        queryParameters: queryParameters,
        options: options,
      );
    } catch (e) {
      _logger.error('PUT request failed: $path', error: e);
      rethrow;
    }
  }

  Future<Response> delete(
    String path, {
    dynamic data,
    Map<String, dynamic>? queryParameters,
    Options? options,
  }) async {
    try {
      return await _dio.delete(
        path,
        data: data,
        queryParameters: queryParameters,
        options: options,
      );
    } catch (e) {
      _logger.error('DELETE request failed: $path', error: e);
      rethrow;
    }
  }
}
