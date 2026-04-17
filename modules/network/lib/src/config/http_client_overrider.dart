import 'dart:io';

class HttpClientOverrider {
  HttpClientOverrider({
    required this.isProduction,
    List<String> ignoreCertificateErrorForHosts = const [],
    String? proxy,
    this.sslPinningEnable = true,
  }) : _proxy = proxy,
       _ignoreCertificateErrorForHosts = ignoreCertificateErrorForHosts;

  final List<String> _ignoreCertificateErrorForHosts;
  final String? _proxy;
  final bool isProduction;
  final bool sslPinningEnable;

  HttpClient override(HttpClient client) {
    if (!isProduction && (_proxy?.isNotEmpty ?? false)) {
      client.findProxy = (Uri url) => 'PROXY $_proxy';
    }

    client.badCertificateCallback = _onBadCertificateCallback;

    return client;
  }

  bool _onBadCertificateCallback(X509Certificate cert, String host, _) {
    return !isProduction &&
        !sslPinningEnable &&
        _ignoreCertificateErrorForHosts.contains(host);
  }
}
