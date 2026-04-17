import 'package:applications/src/applications/data/models/agent_profile_dto.dart';
import 'package:applications/src/applications/data/models/applications_list_response_dto.dart';
import 'package:applications/src/core/network/applications_urls.dart';
import 'package:core/core.dart';
import 'package:network/network.dart';

abstract interface class ApplicationsNetworkDatasource {
  Future<ApplicationsListResponseDto> getApplications({
    int? limit,
    String? cursor,
  });

  Future<String> getOnboardingAppLink();

  Future<AgentProfileDto> getAgentProfile();

  Future<void> deleteApplication({required String applicationId});

  Future<void> createApplication({
    required String firstName,
    required String lastName,
    required String phone,
    required String pan,
  });
}

class ApplicationsNetworkDatasourceImpl
    implements ApplicationsNetworkDatasource {
  const ApplicationsNetworkDatasourceImpl({
    required RestClientService restClientService,
  }) : _restClientService = restClientService;

  final RestClientService _restClientService;

  @override
  Future<ApplicationsListResponseDto> getApplications({
    int? limit,
    String? cursor,
  }) async {
    final params = <String, dynamic>{};
    if (limit != null) params['limit'] = limit;
    if (cursor != null && cursor.isNotEmpty) params['cursor'] = cursor;

    return _restClientService.get<ApplicationsListResponseDto>(
      ApplicationsUrls.getApplications,
      params: params.isEmpty ? null : params,
      parser: ObjectParser(ApplicationsListResponseDto.fromJson),
    );
  }

  @override
  Future<String> getOnboardingAppLink() {
    return _restClientService.get<String>(
      ApplicationsUrls.getOnboardingAppLink,
      parser: ObjectParser<String>((json) => json['link'] as String),
    );
  }

  @override
  Future<AgentProfileDto> getAgentProfile() {
    return _restClientService.get<AgentProfileDto>(
      ApplicationsUrls.getAgentProfile,
      parser: ObjectParser(AgentProfileDto.fromJson),
    );
  }

  @override
  Future<void> deleteApplication({required String applicationId}) {
    return _restClientService.delete<void>(
      ApplicationsUrls.deleteApplication(applicationId),
    );
  }

  @override
  Future<void> createApplication({
    required String firstName,
    required String lastName,
    required String phone,
    required String pan,
  }) {
    return _restClientService.post<void>(
      ApplicationsUrls.createApplication,
      body: {
        'firstName': firstName,
        'lastName': lastName,
        'phone': phone,
        'pan': pan,
      },
    );
  }
}
