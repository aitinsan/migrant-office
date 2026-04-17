import 'dart:async';

import 'package:core/core.dart';
import 'package:core/external_dependencies.dart';
import 'package:network/network.dart';

abstract class RestClientService {
  RestClientService(
    this._client, {
    required NetworkInfo networkInfo,
    required NetworkErrorHandler errorHandler,
    List<Interceptor> interceptors = const [],
  }) : _errorHandler = errorHandler,
       _networkInfo = networkInfo {
    /// Добавление интерсепторов
    _client.interceptors.insertAll(0, interceptors);
  }

  final Dio _client;

  final NetworkInfo _networkInfo;

  final NetworkErrorHandler _errorHandler;

  ///Обёртки запросов дио
  Future<T> get<T>(
    String url, {
    Map<String, dynamic>? params,
    CancelToken? cancelToken,
    Options? options,
    DataParser<T>? parser,
  }) => request(
    () => _client.get(
      url,
      queryParameters: params,
      cancelToken: cancelToken,
      options: options,
    ),
    parser: parser,
  );

  Future<T> post<T>(
    String url, {
    Map<String, dynamic>? body,
    Map<String, dynamic>? params,
    CancelToken? cancelToken,
    Options? options,
    DataParser<T>? parser,
  }) => request(
    () => _client.post(
      url,
      data: body,
      queryParameters: params,
      cancelToken: cancelToken,
      options: options,
    ),
    parser: parser,
  );

  Future<T> postObject<T>(
    String url, {
    Object? body,
    Map<String, dynamic>? params,
    CancelToken? cancelToken,
    Options? options,
    DataParser<T>? parser,
  }) => request(
    () => _client.post(
      url,
      data: body,
      queryParameters: params,
      cancelToken: cancelToken,
      options: options,
    ),
    parser: parser,
  );

  Future<T> put<T>(
    String url, {
    Map<String, dynamic>? body,
    Map<String, dynamic>? params,
    CancelToken? cancelToken,
    Options? options,
    DataParser<T>? parser,
  }) => request(
    () => _client.put(
      url,
      data: body,
      options: options,
      cancelToken: cancelToken,
      queryParameters: params,
    ),
    parser: parser,
  );

  Future<T> putObject<T>(
    String url, {
    Object? body,
    Map<String, dynamic>? params,
    CancelToken? cancelToken,
    Options? options,
    DataParser<T>? parser,
  }) => request(
    () => _client.put(
      url,
      data: body,
      queryParameters: params,
      cancelToken: cancelToken,
      options: options,
    ),
    parser: parser,
  );

  Future<T> delete<T>(
    String url, {
    Options? options,
    Map<String, dynamic>? params,
    CancelToken? cancelToken,
    DataParser<T>? parser,
  }) => request(
    () => _client.delete(
      url,
      options: options,
      queryParameters: params,
      cancelToken: cancelToken,
    ),
    parser: parser,
  );

  Future<T> deleteObject<T>(
    String url, {
    Options? options,
    Map<String, dynamic>? params,
    CancelToken? cancelToken,
    DataParser<T>? parser,
    Object? body,
  }) => request(
    () => _client.delete(
      url,
      options: options,
      queryParameters: params,
      cancelToken: cancelToken,
      data: body,
    ),
    parser: parser,
  );

  Future<T> patch<T>(
    String url, {
    Map<String, dynamic>? body,
    Options? options,
    CancelToken? cancelToken,
    Map<String, dynamic>? params,
    DataParser<T>? parser,
    Function(int, int)? onSendProgress,
  }) => request(
    () => _client.patch(
      url,
      data: body,
      options: options,
      cancelToken: cancelToken,
      queryParameters: params,
      onSendProgress: onSendProgress,
    ),
    parser: parser,
  );

  @protected
  @mustCallSuper
  Future<T> request<T>(
    Future<Response> Function() call, {
    required DataParser<T>? parser,
  }) async {
    return _errorHandler.tryCall<T>(() async {
      if (await _networkInfo.isConnected) {
        final response = await call();
        final data = response.data;
        if (parser != null) return parser.parse(data);
        return data;
      } else {
        throw const NoConnectionError();
      }
    });
  }
}
