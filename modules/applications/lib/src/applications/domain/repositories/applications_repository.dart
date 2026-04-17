import 'package:applications/src/applications/domain/models/applications_page.dart';
import 'package:applications/src/applications/domain/models/agent_profile.dart';

abstract interface class ApplicationsRepository {
  Future<ApplicationsPage> getApplications({int? limit, String? cursor});

  Future<String> getOnboardingAppLink();

  Future<AgentProfile> getAgentProfile();

  Future<void> deleteApplication({required String applicationId});

  Future<void> createApplication({
    required String firstName,
    required String lastName,
    required String phone,
    required String pan,
  });
}
