import 'package:pokedex/core/constant/endpoint.dart';
import 'package:dio/dio.dart';
import 'package:dio_smart_retry/dio_smart_retry.dart';

class ApiClient {
  final Dio _dio = Dio();

  ApiClient() {
    _dio.options.connectTimeout = const Duration(seconds: 30);
    _dio.options.receiveTimeout = const Duration(minutes: 5);
    _dio.options.headers['Accept'] = 'application/json';
    _dio.options.headers['Content-Type'] = 'application/json';
    _dio.options.headers['Platform'] = 'Mobile';
    _dio.options.responseType = ResponseType.json;
    _dio.options.contentType = 'application/json';
    _dio.options.validateStatus = (status) => status! < 500;

    _dio.interceptors.add(
      InterceptorsWrapper(
        onResponse: (response, handler) async {
          if (response.statusCode == 401 &&
              !response.requestOptions.path.contains('login')) {
            unAuthorized();
          }
          return handler.next(response);
        },
        onError: (DioException e, handler) async {
          if (e.response?.statusCode == 401 &&
              !e.requestOptions.path.contains('login')) {
            unAuthorized();
          }
          return handler.next(e);
        },
      ),
    );

    _dio.interceptors.add(
      RetryInterceptor(
        dio: _dio,
        retries: 3,

        /// retry count (optional)
        retryDelays: const [
          /// set delays between retries (optional)
          Duration(seconds: 1),

          /// wait 1 sec before first retry
          Duration(seconds: 2),

          /// wait 2 sec before second retry
          Duration(seconds: 3),

          /// wait 3 sec before third retry
        ],
      ),
    );
  }

  void unAuthorized() async {
    await Future.delayed(const Duration(milliseconds: 500));
    // inject<AppRouter>().replaceAll([const LoginRoute()]);
  }

  /// Setup Host Header
  Future<void> setupHostHeader() async {
    _dio.options.baseUrl = Endpoint.baseUrl;
  }

  Future<Response<T>> get<T>(
    String path, {
    Map<String, dynamic>? queryParameters,
    Options? options,
    CancelToken? cancelToken,
    void Function(int, int)? onReceiveProgress,
  }) async {
    await setupHostHeader();
    return _dio.get<T>(
      path,
      queryParameters: queryParameters,
      options: (options ?? Options()).copyWith(
        responseType: ResponseType.json,
        contentType: 'application/json',
      ),
      cancelToken: cancelToken,
      onReceiveProgress: onReceiveProgress,
    );
  }

  Future<Response<T>> post<T>(
    String path, {
    dynamic data,
    Map<String, dynamic>? queryParameters,
    Options? options,
    CancelToken? cancelToken,
    void Function(int, int)? onSendProgress,
    void Function(int, int)? onReceiveProgress,
    String? customBaseUrl,
  }) async {
    await setupHostHeader();

    // Override baseUrl temporarily if customBaseUrl is provided
    final originalBaseUrl = _dio.options.baseUrl;
    if (customBaseUrl != null) {
      _dio.options.baseUrl = customBaseUrl;
    }

    try {
      return await _dio.post<T>(
        path,
        data: data,
        queryParameters: queryParameters,
        options: (options ?? Options()).copyWith(
          responseType: ResponseType.json,
          contentType: 'application/json',
        ),
        cancelToken: cancelToken,
        onSendProgress: onSendProgress,
        onReceiveProgress: onReceiveProgress,
      );
    } finally {
      // Restore original baseUrl
      if (customBaseUrl != null) {
        _dio.options.baseUrl = originalBaseUrl;
      }
    }
  }

  Future<Response<T>> put<T>(
    String path, {
    dynamic data,
    Map<String, dynamic>? queryParameters,
    Options? options,
    CancelToken? cancelToken,
    void Function(int, int)? onSendProgress,
    void Function(int, int)? onReceiveProgress,
  }) async {
    await setupHostHeader();
    return _dio.put<T>(
      path,
      data: data,
      queryParameters: queryParameters,
      options: (options ?? Options()).copyWith(
        responseType: ResponseType.json,
        contentType: 'application/json',
      ),
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );
  }

  Future<Response<T>> delete<T>(
    String path, {
    dynamic data,
    Map<String, dynamic>? queryParameters,
    Options? options,
    CancelToken? cancelToken,
  }) async {
    await setupHostHeader();
    return _dio.delete<T>(
      path,
      data: data,
      queryParameters: queryParameters,
      options: (options ?? Options()).copyWith(
        responseType: ResponseType.json,
        contentType: 'application/json',
      ),
      cancelToken: cancelToken,
    );
  }
}
