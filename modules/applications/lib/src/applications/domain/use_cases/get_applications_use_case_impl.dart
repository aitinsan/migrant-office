import 'dart:async';

import 'package:applications/src/applications/domain/models/applications_page.dart';
import 'package:applications/src/applications/domain/repositories/applications_repository.dart';
import 'package:applications/src/applications/domain/use_cases/get_applications_use_case.dart';
import 'package:core/core.dart';

class GetApplicationsUseCaseImpl
    extends AsyncUseCase<ApplicationsPage, GetApplicationsUseCaseParams>
    implements GetApplicationsUseCase {
  const GetApplicationsUseCaseImpl({required ApplicationsRepository repository})
    : _repository = repository;

  final ApplicationsRepository _repository;

  @override
  FutureOr<ApplicationsPage> makeRequest(GetApplicationsUseCaseParams params) {
    return _repository.getApplications(
      limit: params.limit,
      cursor: params.cursor,
    );
  }
}
