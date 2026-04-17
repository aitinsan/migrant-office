import 'dart:io';
import 'dart:typed_data';

import 'package:network/src/config/http_client_overrider.dart';

class AppHttpOverrides extends HttpOverrides {
  AppHttpOverrides({required this.certificate, required this.httpOverrider});

  final ByteData? certificate;
  final HttpClientOverrider httpOverrider;

  @override
  HttpClient createHttpClient(
    SecurityContext? context, [
    bool withTrustedRoots = true,
  ]) {
    final securityContext =
        context ?? SecurityContext(withTrustedRoots: withTrustedRoots);

    if (certificate case final certificate?) {
      securityContext.setTrustedCertificatesBytes(
        certificate.buffer.asInt8List(),
      );
    }
    return httpOverrider.override(super.createHttpClient(securityContext));
  }
}
