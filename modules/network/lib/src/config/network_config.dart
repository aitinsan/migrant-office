import 'dart:io';

import 'package:network/src/config/app_http_overrides.dart';
import 'package:network/src/config/certificate_loader.dart';
import 'package:network/src/config/http_client_overrider.dart';

/// {@template network_config}
/// Configuration class for initializing global network settings.
///
/// Responsible for:
/// - configuring available API servers
/// - setting up SSL pinning
/// - loading certificates
/// - configuring proxy
/// - overriding the global [HttpClient] via [HttpOverrides]
/// {@endtemplate}
class NetworkConfig {
  /// {@macro network_config}
  ///
  /// [servers] — list of backend servers available for the application.
  ///
  /// [certificateLoader] — loader used to retrieve SSL certificates
  /// for SSL pinning in production environments.
  ///
  /// [ignoreCertificateErrorForHosts] — list of hosts for which SSL
  /// certificate errors should be ignored.
  const NetworkConfig({
    required this.servers,
    required CertificateLoader certificateLoader,
    List<String> ignoreCertificateErrorForHosts = const [],
  }) : _ignoreCertificateErrorForHosts = ignoreCertificateErrorForHosts,
       _certificateLoader = certificateLoader;

  /// List of backend servers available for the application.
  final List<ServerItem> servers;

  /// Loader used to retrieve SSL certificates for SSL pinning in production environments.
  final CertificateLoader _certificateLoader;

  /// Hosts for which certificate validation errors should be ignored.
  ///
  /// Useful for development environments or internal services
  /// where SSL certificates may be self-signed.
  final List<String> _ignoreCertificateErrorForHosts;

  Future<void> config({
    required String? proxy,
    required bool isProduction,
    required bool sslPinningEnable,
  }) async {
    final httpOverrider = HttpClientOverrider(
      ignoreCertificateErrorForHosts: _ignoreCertificateErrorForHosts,
      proxy: proxy,
      isProduction: isProduction,
      sslPinningEnable: sslPinningEnable,
    );

    final certificate = sslPinningEnable
        ? await _certificateLoader.loadProdCertificate()
        : null;

    HttpOverrides.global = AppHttpOverrides(
      certificate: certificate,
      httpOverrider: httpOverrider,
    );
  }
}

class ServerItem {
  ServerItem({required this.uri, required this.name});

  final Uri uri;
  final String name;
}
