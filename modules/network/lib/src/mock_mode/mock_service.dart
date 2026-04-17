import 'dart:convert';

import 'package:core/external_dependencies.dart';
import 'package:flutter/services.dart';
import 'package:network/network.dart';

typedef MockResponse = ({ByteData data, String contentType});

class MockService {
  Map<String, Map<MockProperties, dynamic>> get _mockMap => _mockMapFetcher();
  final Map<String, Map<MockProperties, dynamic>> Function() _mockMapFetcher;

  MockService({
    required Map<String, Map<MockProperties, dynamic>> Function() mockMap,
  }) : _mockMapFetcher = mockMap;

  Future<MockResponse> getResponse(RequestOptions options) async {
    final networkMethod = MockNetworkMethod.fromString(options.method);

    final pathMocks = _mockMap[options.uri.path];
    if (pathMocks == null) {
      options.extra['mockStatusCode'] = 404;
      return (data: ByteData(0), contentType: 'json');
    }

    final entry = pathMocks.entries.firstWhere(
      (e) => e.key.method == networkMethod,
      orElse: () => const MapEntry<MockProperties, Object>(
        MockProperties(method: MockNetworkMethod.get),
        '',
      ),
    );

    options.extra['mockStatusCode'] = entry.key.statusCode;

    final value = entry.value ?? '';

    if (value is String) {
      return _getResponseByPath(
        value,
        options: options,
        networkMethod: networkMethod,
      );
    } else if (value is Map<dynamic, String>) {
      return _getResponseByPath(
        value[options.data?.toString() ?? options.queryParameters.toString()] ??
            '',
        options: options,
        networkMethod: networkMethod,
      );
    } else {
      return (data: ByteData(0), contentType: 'json');
    }
  }

  Future<MockResponse> _getResponseByPath(
    String responsePath, {
    required RequestOptions options,
    required MockNetworkMethod networkMethod,
  }) async {
    final statusCode = options.extra['mockStatusCode'] as int? ?? 200;

    if (statusCode != 200) {
      try {
        final errorResponsePath = responsePath.replaceAll(
          '.json',
          '_$statusCode.json',
        );
        final data = await rootBundle.load(errorResponsePath);

        return (data: data, contentType: 'json');
      } catch (_) {
        final json = jsonEncode({
          'error':
              'Mock file for error code $statusCode not found at $responsePath',
        });
        final bytes = ByteData.view(Uint8List.fromList(json.codeUnits).buffer);
        options.extra['mockStatusCode'] = 404;
        return (data: bytes, contentType: 'json');
      }
    }

    final responseType = responsePath.split('.').last;

    final data = await rootBundle.load(responsePath);

    return (data: data, contentType: responseType);
  }
}

enum MockNetworkMethod {
  get('GET'),
  post('POST'),
  put('PUT'),
  delete('DELETE'),
  patch('PATCH');

  const MockNetworkMethod(this.key);

  factory MockNetworkMethod.fromString(String key) {
    for (final method in MockNetworkMethod.values) {
      if (method.key == key) {
        return method;
      }
    }
    throw ArgumentError('Не найден метод для ключа $key');
  }

  final String key;
}
