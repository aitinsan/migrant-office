import 'dart:async';

import 'package:auth/src/auth/domain/repositories/auth_repository.dart';
import 'package:auth/src/auth/domain/use_cases/sign_in_use_case.dart';
import 'package:core/core.dart';

class SignInUseCaseImpl extends AsyncUseCase<void, SignInUseCaseParams>
    implements SignInUseCase {
  const SignInUseCaseImpl({required AuthRepository repository})
    : _repository = repository;

  final AuthRepository _repository;

  @override
  FutureOr<void> makeRequest(SignInUseCaseParams params) =>
      _repository.signIn(email: params.email, password: params.password);
}
