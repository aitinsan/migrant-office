import 'dart:convert';
import 'dart:io';
import 'dart:math';

import 'package:core/external_dependencies.dart';
import 'package:flutter/services.dart';
import 'package:network/src/mock_mode/mock_service.dart';

class MockDioAdapter implements HttpClientAdapter {
  MockDioAdapter({required MockService mockService})
    : _mockService = mockService;

  final MockService _mockService;

  @override
  Future<ResponseBody> fetch(
    RequestOptions options,
    Stream<Uint8List>? requestStream,
    Future? cancelFuture,
  ) async {
    // Simulate network delay
    await Future.delayed(Duration(milliseconds: 200 + Random().nextInt(300)));

    final response = await _mockService.getResponse(options);

    final bytes = Uint8List.sublistView(response.data);
    final contentType = response.contentType;

    final statusCode = options.extra['mockStatusCode'] ?? 200;

    if (contentType == 'json') {
      final json = utf8.decode(bytes);

      return ResponseBody.fromString(
        json,
        statusCode,
        headers: {
          HttpHeaders.contentTypeHeader: ['application/json'],
        },
      );
    } else if (contentType == 'pdf') {
      return ResponseBody.fromBytes(
        bytes,
        statusCode,
        headers: {
          HttpHeaders.contentTypeHeader: ['application/pdf'],
        },
      );
    }

    return ResponseBody.fromString('Unknown Content Type', 400);
  }

  @override
  Future<void> close({bool force = false}) async {}
}
