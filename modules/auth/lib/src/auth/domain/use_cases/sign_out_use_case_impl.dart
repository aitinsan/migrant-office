import 'dart:async';

import 'package:auth/src/auth/domain/repositories/auth_repository.dart';
import 'package:auth/src/auth/domain/use_cases/sign_out_use_case.dart';
import 'package:core/core.dart';

class SignOutUseCaseImpl extends AsyncUseCase<void, EmptyUseCaseParams>
    implements SignOutUseCase {
  const SignOutUseCaseImpl({required AuthRepository repository})
    : _repository = repository;

  final AuthRepository _repository;

  @override
  FutureOr<void> makeRequest(EmptyUseCaseParams params) =>
      _repository.signOut();
}
