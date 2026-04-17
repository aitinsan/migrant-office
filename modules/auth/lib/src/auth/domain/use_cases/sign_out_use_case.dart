import 'package:core/core.dart';

abstract interface class SignOutUseCase {
  Future<Result<AppFailure, void>> invoke(EmptyUseCaseParams params);
}
