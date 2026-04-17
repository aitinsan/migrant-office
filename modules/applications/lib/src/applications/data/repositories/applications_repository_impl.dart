import 'package:applications/src/applications/data/data_sources/applications_network_datasource.dart';
import 'package:applications/src/applications/domain/models/application.dart';
import 'package:applications/src/applications/domain/models/agent_profile.dart';
import 'package:applications/src/applications/domain/models/applications_page.dart';
import 'package:applications/src/applications/domain/repositories/applications_repository.dart';

class ApplicationsRepositoryImpl implements ApplicationsRepository {
  const ApplicationsRepositoryImpl({
    required ApplicationsNetworkDatasource networkDatasource,
  }) : _networkDatasource = networkDatasource;

  final ApplicationsNetworkDatasource _networkDatasource;

  @override
  Future<ApplicationsPage> getApplications({int? limit, String? cursor}) async {
    final response = await _networkDatasource.getApplications(
      limit: limit,
      cursor: cursor,
    );

    final applications = response.applications
        .map(
          (dto) => Application(
            id: dto.id,
            pan: dto.pan,
            firstName: dto.firstName,
            lastName: dto.lastName,
            phone: dto.phone,
            created: dto.createdAt,
          ),
        )
        .toList();

    return ApplicationsPage(
      total: response.total,
      nextCursor: response.nextCursor,
      applications: applications,
    );
  }

  @override
  Future<String> getOnboardingAppLink() =>
      _networkDatasource.getOnboardingAppLink();

  @override
  Future<AgentProfile> getAgentProfile() async {
    final response = await _networkDatasource.getAgentProfile();
    return AgentProfile(
      agentName: response.agentName,
      agencyName: response.agencyName,
    );
  }

  @override
  Future<void> deleteApplication({required String applicationId}) {
    return _networkDatasource.deleteApplication(applicationId: applicationId);
  }

  @override
  Future<void> createApplication({
    required String firstName,
    required String lastName,
    required String phone,
    required String pan,
  }) {
    return _networkDatasource.createApplication(
      firstName: firstName,
      lastName: lastName,
      phone: phone,
      pan: pan,
    );
  }
}
