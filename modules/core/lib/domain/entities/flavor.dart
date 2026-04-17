import 'package:flutter/foundation.dart';

/// Варианты сборок приложения
enum Flavor {
  dev,
  prod;

  static Flavor fromString(String? value) {
    return value != null ? Flavor.values.byName(value) : Flavor.prod;
  }
}

/// Выбранный вариант сборки приложения (через переменную среды)
class AppFlavor {
  static Flavor? value;

  static bool get isDev => value == Flavor.dev;

  static bool get isProd => value == Flavor.prod;

  static bool get isLoggingEnabled => !isProd || kDebugMode;
}
