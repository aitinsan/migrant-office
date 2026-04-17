import 'package:core/core.dart';

class AppLocalStorageKey implements LocalStorageKey {
  const AppLocalStorageKey._(this.identifier, {this.isUserRelated = false});

  @override
  final String identifier;

  @override
  final bool isUserRelated;

  static const testServer = AppLocalStorageKey._(
    'testServer',
    isUserRelated: false,
  );

  static const enableSslPinningForQA = AppLocalStorageKey._(
    'enableSslPinningForQA',
    isUserRelated: false,
  );

  static const flavor = AppLocalStorageKey._('flavor', isUserRelated: false);

  static const proxyIp = AppLocalStorageKey._('proxyIp', isUserRelated: false);

  static const keys = [testServer];
}
