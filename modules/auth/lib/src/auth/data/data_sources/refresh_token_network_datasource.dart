import 'package:auth/auth.dart';
import 'package:core/core.dart';
import 'package:network/network.dart';

class RefreshTokenNetworkDatasource implements RefreshClient<AuthTokenDto> {
  RefreshTokenNetworkDatasource({required RestClientService restClientService})
    : _restClientService = restClientService;

  final RestClientService _restClientService;

  @override
  Future<AuthTokenDto> refreshToken(AuthTokenDto token) =>
      _restClientService.post<AuthTokenDto>(
        AuthUrls.refreshToken,
        body: {'refreshToken': token.refreshToken},
        parser: ObjectParser(AuthTokenDto.fromJson),
      );
}
