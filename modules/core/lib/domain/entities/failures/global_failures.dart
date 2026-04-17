
import 'app_failures.dart';

sealed class GlobalFailure extends AppFailure {
  const GlobalFailure({super.message = 'Global failure'});

  @override
  List<Object?> get props => [message];

  @override
  String toString() => 'Type: $runtimeType  message: $message';
}

final class UnauthorizedFailure extends GlobalFailure {
  const UnauthorizedFailure({super.message = 'Unauthorized failure'});
}

final class AppUpdateRequiredFailure extends GlobalFailure {
  const AppUpdateRequiredFailure({super.message = 'App update is required'});
}
