import 'dart:async';

import 'package:applications/src/applications/domain/repositories/applications_repository.dart';
import 'package:applications/src/applications/domain/use_cases/get_onboarding_app_link_use_case.dart';
import 'package:core/core.dart';

class GetOnboardingAppLinkUseCaseImpl
    extends AsyncUseCase<String, EmptyUseCaseParams>
    implements GetOnboardingAppLinkUseCase {
  const GetOnboardingAppLinkUseCaseImpl({
    required ApplicationsRepository repository,
  }) : _repository = repository;

  final ApplicationsRepository _repository;

  @override
  FutureOr<String> makeRequest(EmptyUseCaseParams params) {
    return _repository.getOnboardingAppLink();
  }
}
