import 'package:flutter/services.dart';

class CertificateLoader {
  const CertificateLoader({required String path})
    : _path = path;

  final String _path;

  Future<ByteData> loadProdCertificate() {
    return rootBundle.load(_path);
  }
}
