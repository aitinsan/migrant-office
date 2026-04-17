import 'package:core/core.dart';
import 'package:core/external_dependencies.dart' hide Result;

abstract interface class SignInUseCase {
  Future<Result<AppFailure, void>> invoke(SignInUseCaseParams params);
}

class SignInUseCaseParams extends Equatable {
  const SignInUseCaseParams({required this.email, required this.password});

  final String email;

  final String password;

  @override
  List<Object?> get props => [email, password];
}