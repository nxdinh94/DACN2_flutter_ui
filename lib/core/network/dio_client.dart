import 'package:dio/dio.dart';
import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';

import '../logger/logger.dart';

@lazySingleton
class DioClient {
  late final Dio _dio;
  final AppLogger _logger = AppLogger();

  final String baseUrl = 'http://192.168.2.14:4000'; 

  DioClient() {
    _dio = Dio();
    _dio.options = BaseOptions(
      connectTimeout: const Duration(seconds: 10),
      receiveTimeout: const Duration(seconds: 10),
      sendTimeout: const Duration(seconds: 10),
      responseType: ResponseType.json,
    );
    _setupInterceptors();
  }

  void _setupInterceptors() {
    _dio.interceptors.add(
      InterceptorsWrapper(
        onRequest: (options, handler) {
          _logger.info('Request: ${options.method} ${options.path}');
          options.headers['Authorization'] = 'Bearer YOUR_TOKEN_HERE'; // Example header
          handler.next(options);
        },
        onResponse: (response, handler) {
          _logger.info('Response: ${response.statusCode} ${response.requestOptions.path}');
          handler.next(response);
        },
        onError: (error, handler) {
          _logger.error('Error: ${error.message}', error: error);
          handler.next(error);
        },
      ),
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
        '$baseUrl$path',
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
