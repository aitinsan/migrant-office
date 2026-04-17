class Config {
  const Config._();

  static const String apiBaseUrlDev = String.fromEnvironment(
    'API_BASE_URL_DEV',
    defaultValue: 'https://migrant-office-api.onrender.com/api',
  );

  static const String apiBaseUrlProd = String.fromEnvironment(
    'API_BASE_URL_PROD',
    defaultValue: 'https://migrant-office-api.onrender.com/api',
  );

  static const String apiBaseUrlLocalMock = String.fromEnvironment(
    'API_BASE_URL_LOCAL_MOCK',
    defaultValue: 'http://localhost:3000/api',
  );

  static final Duration networkTimeout = const Duration(
    seconds: int.fromEnvironment('NETWORK_TIMEOUT', defaultValue: 30),
  );

  static const String certificateAssetPath = String.fromEnvironment(
    'CERTIFICATE_ASSET_PATH',
    defaultValue: 'assets/certificates/certificate.pem',
  );

  static const String certificateFingerprint = String.fromEnvironment(
    'CERTIFICATE_FINGERPRINT',
    defaultValue: '',
  );

  static final String flavor = String.fromEnvironment(
    'FLAVOR',
    defaultValue: '',
  );
}
