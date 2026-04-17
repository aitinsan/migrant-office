import 'package:applications/src/assets/generated/assets.gen.dart';
import 'package:applications/src/core/network/applications_urls.dart';
import 'package:network/network.dart';

class ApplicationsMocks {
  ApplicationsMocks._();

  static Map<String, Map<MockProperties, dynamic>> get mocks => {
    ApplicationsUrls.getApplications: {
      const MockProperties(method: MockNetworkMethod.get):
          NomadeeApplicationsAssets.mocks.applications,
    },
    ApplicationsUrls.getOnboardingAppLink: {
      const MockProperties(method: MockNetworkMethod.get):
          NomadeeApplicationsAssets.mocks.onboardingAppLink,
    },
    ApplicationsUrls.getAgentProfile: {
      const MockProperties(method: MockNetworkMethod.get):
          NomadeeApplicationsAssets.mocks.profile,
    },
    ApplicationsUrls.createApplication: {
      const MockProperties(method: MockNetworkMethod.post):
          NomadeeApplicationsAssets.mocks.addApplication,
    },
    ApplicationsUrls.deleteApplication('1'): {
      const MockProperties(method: MockNetworkMethod.delete):
          NomadeeApplicationsAssets.mocks.deleteCandidate,
    },
  };
}
