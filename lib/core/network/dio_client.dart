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
      connectTimeout: const Duration(seconds: 20),
      receiveTimeout: const Duration(seconds: 20),
      sendTimeout: const Duration(seconds: 20),
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

  /// Helper method to handle errors consistently across all HTTP methods
  Exception _handleError(Object error, String method, String path) {
    if (error is DioException) {
      _logger.error('$method request failed: $path', error: error);
      
      switch (error.type) {
        case DioExceptionType.connectionTimeout:
        case DioExceptionType.sendTimeout:
        case DioExceptionType.receiveTimeout:
          return Exception('Request timeout. Please check your internet connection and try again.');
        
        case DioExceptionType.connectionError:
          return Exception('Network error. Please check your internet connection.');
        
        case DioExceptionType.badResponse:
          final statusCode = error.response?.statusCode;
          final message = error.response?.data?['message'] ?? 'Server error occurred.';
          return Exception('Server error ($statusCode): $message');
        
        case DioExceptionType.cancel:
          return Exception('Request was cancelled.');
        
        case DioExceptionType.badCertificate:
          return Exception('Security certificate error.');
        
        case DioExceptionType.unknown:
          return Exception('An unexpected error occurred. Please try again.');
      }
    }
    
    _logger.error('$method request failed: $path', error: error);
    return error is Exception ? error : Exception(error.toString());
  }

  Future<Either<Exception, Response>> get(
    String path, {
    Map<String, dynamic>? queryParameters,
    Options? options,
  }) async {
    return TaskEither<Exception, Response>.tryCatch(
      () async => await _dio.get(
        path,
        queryParameters: queryParameters,
        options: options,
      ),
      (error, stackTrace) => _handleError(error, 'GET', path),
    ).run();
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
      (error, stackTrace) => _handleError(error, 'POST', path),
    ).run();
  }

  Future<Either<Exception, Response>> put(
    String path, {
    dynamic data,
    Map<String, dynamic>? queryParameters,
    Options? options,
  }) async {
    return TaskEither<Exception, Response>.tryCatch(
      () async => await _dio.put(
        path,
        data: data,
        queryParameters: queryParameters,
        options: options,
      ),
      (error, stackTrace) => _handleError(error, 'PUT', path),
    ).run();
  }

  Future<Either<Exception, Response>> patch(
    String path, {
    dynamic data,
    Map<String, dynamic>? queryParameters,
    Options? options,
  }) async {
    return TaskEither<Exception, Response>.tryCatch(
      () async => await _dio.patch(
        path,
        data: data,
        queryParameters: queryParameters,
        options: options,
      ),
      (error, stackTrace) => _handleError(error, 'PATCH', path),
    ).run();
  }

  Future<Either<Exception, Response>> delete(
    String path, {
    dynamic data,
    Map<String, dynamic>? queryParameters,
    Options? options,
  }) async {
    return TaskEither<Exception, Response>.tryCatch(
      () async => await _dio.delete(
        path,
        data: data,
        queryParameters: queryParameters,
        options: options,
      ),
      (error, stackTrace) => _handleError(error, 'DELETE', path),
    ).run();
  }
}
