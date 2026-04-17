import 'package:auth/src/auth/domain/repositories/auth_repository.dart';
import 'package:auth/src/auth/domain/use_cases/auth_changes_stream_use_case.dart';
import 'package:core/core.dart';

class AuthChangesStreamUseCaseImpl
    extends StreamUseCase<bool, EmptyUseCaseParams>
    implements AuthChangesStreamUseCase {
  const AuthChangesStreamUseCaseImpl({required AuthRepository repository})
    : _repository = repository;

  final AuthRepository _repository;

  @override
  Stream<bool> makeRequest(EmptyUseCaseParams params) =>
      _repository.authChanges();
}
