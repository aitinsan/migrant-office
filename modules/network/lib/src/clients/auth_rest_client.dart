import 'package:network/src/clients/rest_client_service.dart';

class AuthRestClient extends RestClientService {
  AuthRestClient(
    super._client, {
    required super.networkInfo,
    required super.errorHandler,
    super.interceptors = const [],
  });
}
