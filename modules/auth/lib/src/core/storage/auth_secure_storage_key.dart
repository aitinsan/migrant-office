import 'package:core/core.dart';

class AuthSecureStorageKey implements SecureStorageKey {
  const AuthSecureStorageKey._(this.identifier, {this.isUserRelated = false});

  @override
  final String identifier;

  @override
  final bool isUserRelated;

  static const accessToken = AuthSecureStorageKey._(
    'accessToken',
    isUserRelated: true,
  );

  static const refreshToken = AuthSecureStorageKey._(
    'refreshToken',
    isUserRelated: true,
  );

  static const keys = [accessToken, refreshToken];
}
