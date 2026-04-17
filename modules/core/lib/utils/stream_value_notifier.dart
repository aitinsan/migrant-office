import 'dart:async';

import 'package:flutter/foundation.dart';

class StreamValueNotifier<T> extends ValueNotifier<T> {
  final StreamSubscription<T> _subscription;

  StreamValueNotifier._(super.initial, this._subscription);

  factory StreamValueNotifier(Stream<T> stream, T initialValue) {
    late StreamValueNotifier<T> notifier;
    final sub = stream.listen((value) => notifier.value = value);
    notifier = StreamValueNotifier._(initialValue, sub);
    return notifier;
  }

  @override
  void dispose() {
    _subscription.cancel();
    super.dispose();
  }
}