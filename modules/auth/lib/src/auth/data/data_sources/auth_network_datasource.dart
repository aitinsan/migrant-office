import 'package:auth/src/auth/data/models/auth_token_dto.dart';
import 'package:auth/src/core/network/auth_urls.dart';
import 'package:core/core.dart';
import 'package:network/network.dart';

abstract interface class AuthNetworkDatasource {
  Future<AuthTokenDto> signIn({
    required String email,
    required String password,
  });

  Future<void> signOut();
}

class AuthNetworkDatasourceImpl implements AuthNetworkDatasource {
  const AuthNetworkDatasourceImpl({required RestClientService restClientService})
    : _restClientService = restClientService;

  final RestClientService _restClientService;

  @override
  Future<AuthTokenDto> signIn({
    required String email,
    required String password,
  }) async {
    final response = await _restClientService.post<AuthTokenDto>(
      AuthUrls.signIn,
      body: {'email': email, 'password': password},
      parser: ObjectParser(AuthTokenDto.fromJson)
    );

    return AuthTokenDto(
      accessToken: response.accessToken,
      refreshToken: response.refreshToken,
    );
  }

  @override
  Future<void> signOut() async {
    await _restClientService.get(AuthUrls.signOut);
  }
}
