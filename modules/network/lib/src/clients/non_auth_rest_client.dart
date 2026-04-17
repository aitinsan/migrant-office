import 'package:network/src/clients/rest_client_service.dart';

class NonAuthRestClient extends RestClientService {
  NonAuthRestClient(
    super._client, {
    required super.networkInfo,
    required super.errorHandler,
    super.interceptors = const [],
  });
}
