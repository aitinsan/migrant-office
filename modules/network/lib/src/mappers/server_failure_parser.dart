import 'package:core/core.dart';
import 'package:network/src/server_error.dart';

abstract interface class ServerFailureParser {
  AppFailure fromServerError(int statusCode, ServerError error);
}

class ServerFailureParserImpl implements ServerFailureParser {
  const ServerFailureParserImpl();

  @override
  AppFailure fromServerError(int statusCode, ServerError error) {
    return switch (error) {
      ServerError(error: '1.1') => const UnauthorizedFailure(),
      ServerError(error: '1.2') => const AppUpdateRequiredFailure(),
      _ => ServerFailure(model: error, statusCode: statusCode),
    };
  }
}
