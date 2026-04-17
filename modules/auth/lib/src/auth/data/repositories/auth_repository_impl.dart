import 'package:auth/src/auth/data/data_sources/auth_local_datasource.dart';
import 'package:auth/src/auth/data/data_sources/auth_network_datasource.dart';
import 'package:auth/src/auth/domain/repositories/auth_repository.dart';

class AuthRepositoryImpl implements AuthRepository {
  const AuthRepositoryImpl({
    required AuthLocalDatasource localDatasource,
    required AuthNetworkDatasource networkDatasource,
  }) : _networkDatasource = networkDatasource,
       _localDatasource = localDatasource;

  final AuthLocalDatasource _localDatasource;

  final AuthNetworkDatasource _networkDatasource;

  @override
  Stream<bool> authChanges() =>
      _localDatasource.getTokenPairStream().map((token) => token != null);

  @override
  Future<void> signIn({required String email, required String password}) async {
    final tokenPair = await _networkDatasource.signIn(email: email, password: password);
    await _localDatasource.saveTokenPair(tokenPair);
  }

  @override
  Future<void> signOut() async {
    await _networkDatasource.signOut();
    await _localDatasource.clearTokenPair();
  }
}
