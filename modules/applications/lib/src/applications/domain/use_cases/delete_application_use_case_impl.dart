import 'dart:async';

import 'package:applications/src/applications/domain/repositories/applications_repository.dart';
import 'package:applications/src/applications/domain/use_cases/delete_application_use_case.dart';
import 'package:core/core.dart';

class DeleteApplicationUseCaseImpl
    extends AsyncUseCase<void, DeleteApplicationUseCaseParams>
    implements DeleteApplicationUseCase {
  const DeleteApplicationUseCaseImpl({
    required ApplicationsRepository repository,
  }) : _repository = repository;

  final ApplicationsRepository _repository;

  @override
  FutureOr<void> makeRequest(DeleteApplicationUseCaseParams params) =>
      _repository.deleteApplication(applicationId: params.applicationId);
}
