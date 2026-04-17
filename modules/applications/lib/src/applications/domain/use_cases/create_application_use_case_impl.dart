import 'dart:async';

import 'package:applications/src/applications/domain/repositories/applications_repository.dart';
import 'package:applications/src/applications/domain/use_cases/create_application_use_case.dart';
import 'package:core/core.dart';

class CreateApplicationUseCaseImpl
    extends AsyncUseCase<void, CreateApplicationUseCaseParams>
    implements CreateApplicationUseCase {
  const CreateApplicationUseCaseImpl({
    required ApplicationsRepository repository,
  }) : _repository = repository;

  final ApplicationsRepository _repository;

  @override
  FutureOr<void> makeRequest(CreateApplicationUseCaseParams params) {
    return _repository.createApplication(
      firstName: params.firstName,
      lastName: params.lastName,
      phone: params.phone,
      pan: params.pan,
    );
  }
}
