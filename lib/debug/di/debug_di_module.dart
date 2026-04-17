import 'package:core/core.dart';
import 'package:migrant_office/core/constant/config.dart';
import 'package:migrant_office/core/storage/local_storage/app_local_storage_key.dart';
import 'package:migrant_office/debug/presentation/bloc/debug_bloc.dart';
import 'package:network/network.dart';

mixin DebugModuleDependencies implements CoreModule {
  PackageDeviceInfoService get packageDeviceInfoService;

  LocalStorage get localStorage;

  Future<void> Function() get reinitialize;

  NetworkConfig get networkConfig;
}

class DebugDiModule extends FeatureModule<DebugModuleDependencies> {
  late final String appVersion;

  late final DebugBloc bloc;

  @override
  void init(DebugModuleDependencies coreModule) {
    super.init(coreModule);

    appVersion = coreModule.packageDeviceInfoService.version;

    bloc = DebugBloc(
      localStorage: coreModule.localStorage,
      data: DebugStateModel(
        serverUrl:
            coreModule.localStorage.getString(AppLocalStorageKey.testServer) ??
            Config.apiBaseUrlDev,
        proxyIp:
            coreModule.localStorage.getString(AppLocalStorageKey.proxyIp) ?? '',
        sslPinningEnabled:
            coreModule.localStorage.getBool(
              AppLocalStorageKey.enableSslPinningForQA,
            ) ??
            false,
      ),
      serverItems: coreModule.networkConfig.servers,
      appVersion: appVersion,
      reinitialize: coreModule.reinitialize,
    );
  }
}
