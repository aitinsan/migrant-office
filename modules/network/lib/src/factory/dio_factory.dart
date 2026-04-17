import 'package:core/external_dependencies.dart';
import 'package:flutter/foundation.dart';

/// Factory for creating a [Dio] instance.
class DioFactory {
  const DioFactory({
    required this.baseUrl,
    required this.timeout,
    this.enableLogging = false,
    this.interceptors = const [],
    this.httpClientAdapter,
  });

  /// Base URL for all requests
  final String baseUrl;

  /// Timeout for connect and receive
  final Duration timeout;

  /// Whether to enable request/response logging
  final bool enableLogging;

  /// Additional interceptors (e.g. AuthInterceptor)
  final List<Interceptor> interceptors;

  /// Custom HTTP adapter (e.g. SSL pinning, mock)
  final HttpClientAdapter? httpClientAdapter;

  /// Creates and configures a [Dio] instance
  Dio create() {
    final dio = _createClient();
    _addInterceptors(dio);
    _configureAdapter(dio);
    return dio;
  }

  Dio _createClient() => Dio(
    BaseOptions(
      baseUrl: baseUrl,
      connectTimeout: timeout,
      receiveTimeout: timeout,
    ),
  );

  void _addInterceptors(Dio dio) {
    if (enableLogging) {
      dio.interceptors.add(_buildLogInterceptor());
    }
    dio.interceptors.addAll(interceptors);
  }

  void _configureAdapter(Dio dio) {
    if (httpClientAdapter != null) {
      dio.httpClientAdapter = httpClientAdapter!;
    }
  }

  LogInterceptor _buildLogInterceptor() => LogInterceptor(
    responseBody: true,
    requestBody: true,
    logPrint: (Object? object) {
      final pattern = RegExp('.{1,800}');
      pattern
          .allMatches(object.toString())
          .forEach((match) => debugPrint(match.group(0)));
    },
  );
}