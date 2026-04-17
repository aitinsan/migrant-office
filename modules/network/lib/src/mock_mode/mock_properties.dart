import 'package:flutter/foundation.dart';
import 'package:network/network.dart';

@immutable
class MockProperties {
  final MockNetworkMethod method;
  final int statusCode;

  const MockProperties({required this.method, this.statusCode = 200});

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is MockProperties &&
        other.method == method &&
        other.statusCode == statusCode;
  }

  @override
  int get hashCode => Object.hash(method, statusCode);
}
