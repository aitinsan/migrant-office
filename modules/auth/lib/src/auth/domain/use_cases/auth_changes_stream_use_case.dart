import 'package:core/core.dart';

abstract interface class AuthChangesStreamUseCase {
  Stream<Result<AppFailure, bool>> invoke(
    EmptyUseCaseParams params,
  );
}
