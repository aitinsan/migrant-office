import 'dart:async';

import 'package:applications/src/applications/domain/models/agent_profile.dart';
import 'package:applications/src/applications/domain/repositories/applications_repository.dart';
import 'package:applications/src/applications/domain/use_cases/get_agent_profile_use_case.dart';
import 'package:core/core.dart';

class GetAgentProfileUseCaseImpl
    extends AsyncUseCase<AgentProfile, EmptyUseCaseParams>
    implements GetAgentProfileUseCase {
  const GetAgentProfileUseCaseImpl({required ApplicationsRepository repository})
    : _repository = repository;

  final ApplicationsRepository _repository;

  @override
  FutureOr<AgentProfile> makeRequest(EmptyUseCaseParams params) {
    return _repository.getAgentProfile();
  }
}
