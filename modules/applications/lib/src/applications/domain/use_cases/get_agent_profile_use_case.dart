import 'package:applications/src/applications/domain/models/agent_profile.dart';
import 'package:core/core.dart';

abstract interface class GetAgentProfileUseCase {
  Future<Result<AppFailure, AgentProfile>> invoke(EmptyUseCaseParams params);
}
