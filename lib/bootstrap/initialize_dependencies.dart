import 'dart:async';
import 'dart:developer';

import 'package:migrant_office/core/di/root_di_module.dart';

/// Initializes the app and returns a [RootDiModule] object
Future<RootDiModule> initializeDependencies({
  required Future<void> Function() reinitialize,
  void Function(int progress, String message)? onProgress,
}) async {
  final dependencies = RootDiModule(
    reinitialize: reinitialize,
  );
  final totalSteps = _initializationSteps.length;
  var currentStep = 0;
  for (final step in _initializationSteps.entries) {
    try {
      currentStep++;
      final percent = (currentStep * 100 ~/ totalSteps).clamp(0, 100);
      onProgress?.call(percent, step.key);
      log(
        'Initialization | $currentStep/$totalSteps ($percent%) | "${step.key}"',
      );
      await step.value(dependencies);
    } on Object catch (error, stackTrace) {
      log('Initialization failed at step "${step.key}": $error');
      Error.throwWithStackTrace(
        'Initialization failed at step "${step.key}": $error',
        stackTrace,
      );
    }
  }
  return dependencies;
}

typedef _InitializationStep =
    FutureOr<void> Function(RootDiModule dependencies);
final Map<String, _InitializationStep> _initializationSteps =
    <String, _InitializationStep>{
      'Sentry Initialization': (dependencies) async {
        await Future.delayed(Duration(seconds: 1));
      },
      'Firebase Initialization': (dependencies) async {
        await Future.delayed(Duration(seconds: 1));
      },
      'Root DI Module Initialization': (dependencies) async {
        await dependencies.init();
      },
    };
