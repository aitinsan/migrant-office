import 'package:flutter/foundation.dart';

/// Class-wrapper for generic type value.
///
@immutable
class ValueWrapper<T> extends Object {
  const ValueWrapper(this.value);

  final T? value;

  @override
  int get hashCode => T.hashCode ^ value.hashCode;

  @override
  bool operator ==(Object other) {
    return other is ValueWrapper<T> && value == other.value;
  }
}
