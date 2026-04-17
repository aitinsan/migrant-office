class ApplicationsUrls {
  const ApplicationsUrls._();

  static const String getApplications = '/agents/applications/';
  static const String createApplication = '/agents/applications';
  static const String getOnboardingAppLink = '/agents/onboarding/app-link';
  static const String getAgentProfile = '/agents/profile';

  static String deleteApplication(String applicationId) =>
      '/agents/applications/$applicationId';
}
