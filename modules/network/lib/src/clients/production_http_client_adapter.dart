import 'dart:convert';
import 'dart:io';

import 'package:network/src/config/app_http_overrides.dart';
import 'package:core/external_dependencies.dart';

class ProductionHttpClientAdapter extends IOHttpClientAdapter {
  ProductionHttpClientAdapter({
    required String certificateFingerprint,
    required String prodUrl,
  }) : _prodUrl = prodUrl,
       _certificateFingerprint = certificateFingerprint,
       super(
         createHttpClient: () => (HttpOverrides.current! as AppHttpOverrides)
             .createHttpClient(null, false),
       );

  final String _prodUrl;

  final String _certificateFingerprint;

  @override
  ValidateCertificate? get validateCertificate => (certificate, host, port) {
    if (host == _prodUrl) {
      if (certificate == null) return false;
      // TODO(valery): add instruction to doc
      final pinnedSha256 = _certificateFingerprint;
      return _verifyCertificateSha256(certificate, pinnedSha256);
    }
    // Для всех остальных хостов разрешаем сертификат по умолчанию
    return true;
  };

  static bool _verifyCertificateSha256(
    X509Certificate cert,
    String pinnedSha256,
  ) {
    final derSha256 = sha256.convert(cert.der).bytes;
    final fingerprint = base64.encode(derSha256);
    return fingerprint == pinnedSha256;
  }
}
