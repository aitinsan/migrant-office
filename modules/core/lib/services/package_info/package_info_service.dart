import 'package:core/core.dart';
import 'package:device_info_plus/device_info_plus.dart';
import 'package:intl/intl.dart';
import 'package:package_info_plus/package_info_plus.dart';

/// Сервис для получения информации о пакете приложения.
abstract interface class PackageDeviceInfoService {
  const PackageDeviceInfoService();

  /// CFBundleShortVersionString (iOS) || versionName (Android).
  String get versionName;

  /// CFBundleVersion (iOS) || versionCode (Android).
  String get versionCode;

  /// Версия приложения в формате 1.2.3+1
  String get version;

  /// Язык системы
  String get systemLocale;

  /// Название приложения
  String get appName;

  /// Версия OS
  String get osName;

  /// Модель устройства
  String get deviceModel;

  /// Название устройства
  String get deviceName;
}

class PackageDeviceInfoServiceImpl implements PackageDeviceInfoService {
  bool _isInited = false;
  bool get isInited => _isInited;

  PackageInfo? _packageInfo;
  BaseDeviceInfo? _deviceInfo;

  Future<void> init() async {
    try {
      await _fetchPackageInfo();

      _isInited = true;
    } catch (e) {
      _maybeThrow(e);
    }
  }

  Future<void> _fetchPackageInfo() async {
    _packageInfo = await PackageInfo.fromPlatform();
    _deviceInfo = await DeviceInfoPlugin().deviceInfo;
  }

  @override
  String get versionName => _packageInfo?.version ?? _empty;

  @override
  String get versionCode => _packageInfo?.buildNumber ?? _empty;

  @override
  String get version => versionName.isNotEmpty && versionCode.isNotEmpty
      ? '$versionName+$versionCode'
      : _empty;

  String get _empty {
    _maybeThrow();
    return '';
  }

  void _maybeThrow([Object? e, StackTrace? stackTrace]) {
    final message =
        '${isInited ? 'Unknown error' : 'Not initialized'} $runtimeType';

    if (e != null) {
      Logger.instance.logError(
        e,
        stackTrace ?? StackTrace.current,
        hint: message,
      );
    } else {
      Logger.instance.logMessage(message, warning: true);
    }

    if (AppFlavor.isDev) throw CustomFailure(message: message);
  }

  @override
  String get appName => _packageInfo?.appName ?? _empty;

  @override
  String get deviceModel =>
      switch (_deviceInfo) {
        final AndroidDeviceInfo deviceInfo => deviceInfo.model,
        final IosDeviceInfo deviceInfo => deviceInfo.model,
        _ => null,
      } ??
      _empty;

  @override
  String get deviceName =>
      switch (_deviceInfo) {
        final AndroidDeviceInfo deviceInfo =>
          '${deviceInfo.manufacturer} ${deviceInfo.model}',
        final IosDeviceInfo deviceInfo => deviceInfo.name,
        _ => null,
      } ??
      _empty;

  @override
  String get osName =>
      switch (_deviceInfo) {
        final AndroidDeviceInfo deviceInfo =>
          'Android: ${deviceInfo.version.sdkInt} (${deviceInfo.version.release})',
        final IosDeviceInfo deviceInfo =>
          '${deviceInfo.systemName}: ${deviceInfo.systemVersion}',
        _ => null,
      } ??
      _empty;

  @override
  String get systemLocale => Intl.systemLocale;
}
