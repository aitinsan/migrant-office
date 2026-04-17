import 'package:core/core.dart';

typedef ErrorHandlingCallback =
    void Function({
      required AppFailure failure,
      void Function(AppFailure)? onRetry,
      void Function(AppFailure)? onPopError,
    });
