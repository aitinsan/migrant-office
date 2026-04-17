import 'package:auth/src/auth/data/models/auth_token_dto.dart';
import 'package:auth/src/core/storage/auth_secure_storage_key.dart';
import 'package:core/core.dart';
import 'package:core/external_dependencies.dart';

class AuthLocalDatasource implements TokenStorage<AuthTokenDto> {
  AuthLocalDatasource({required SecureStorage secureStorage})
    : _secureStorage = secureStorage;

  final SecureStorage _secureStorage;

  final BehaviorSubject<AuthTokenDto?> _tokenPairSubject = BehaviorSubject.seeded(null);

  static const AuthSecureStorageKey _accessTokenKey = AuthSecureStorageKey.accessToken;

  static const AuthSecureStorageKey _refreshTokenKey = AuthSecureStorageKey.refreshToken;

  @override
  Future<void> clearTokenPair() async {
    await _secureStorage.deleteValue(_accessTokenKey);
    await _secureStorage.deleteValue(_refreshTokenKey);
  }

  @override
  Future<void> close() => _tokenPairSubject.close();

  @override
  Stream<AuthTokenDto?> getTokenPairStream() => _tokenPairSubject.stream;

  @override
  Future<AuthTokenDto?> loadTokenPair() async {
    final accessToken = _secureStorage.getValue(_accessTokenKey);
    final refreshToken = _secureStorage.getValue(_refreshTokenKey);

    final token = await Future.wait([accessToken, refreshToken]);
    if (token[0] != null && token[1] != null) {
      final tokenPair = AuthTokenDto(accessToken: token[0]!, refreshToken: token[1]!);
      _tokenPairSubject.add(tokenPair);
      return tokenPair;
    } else {
      _tokenPairSubject.add(null);
      return null;
    }
  }

  @override
  Future<void> saveTokenPair(AuthTokenDto tokenPair) async {
    await _secureStorage.setValue(_accessTokenKey, tokenPair.accessToken);
    await _secureStorage.setValue(_refreshTokenKey, tokenPair.refreshToken);
  }
}
