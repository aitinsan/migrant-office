import 'package:auth/src/assets/generated/assets.gen.dart';
import 'package:auth/src/core/network/auth_urls.dart';
import 'package:network/network.dart';

class AuthMocks {
  AuthMocks._();

  static Map<String, Map<MockProperties, dynamic>> get mocks => {
    AuthUrls.signIn: {
      const MockProperties(method: MockNetworkMethod.post): AuthAssets.mocks.signIn,
    },
    AuthUrls.signOut: {
      const MockProperties(method: MockNetworkMethod.get): AuthAssets.mocks.signOut,
    },
    AuthUrls.refreshToken: {
      const MockProperties(method: MockNetworkMethod.post): AuthAssets.mocks.refreshToken,
    },
  };
}
