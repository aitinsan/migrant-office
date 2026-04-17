import 'package:core/services/storage/local_storage/local_storage.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LocalStorageImpl implements LocalStorage {
  const LocalStorageImpl({
    required SharedPreferences preferences,
    required List<LocalStorageKey> keys,
  })  : _preferences = preferences,
        _keys = keys;

  final SharedPreferences _preferences;

  final List<LocalStorageKey> _keys;

  @override
  bool? getBool(LocalStorageKey key) {
    return _preferences.getBool(key.identifier);
  }

  @override
  Future<void> setBool(LocalStorageKey key, bool value) async {
    await _preferences.setBool(key.identifier, value);
  }

  @override
  String? getString(LocalStorageKey key) {
    return _preferences.getString(key.identifier);
  }

  @override
  Future<void> setString(LocalStorageKey key, String value) async {
    await _preferences.setString(key.identifier, value);
  }

  @override
  int? getInt(LocalStorageKey key) {
    return _preferences.getInt(key.identifier);
  }

  @override
  Future<void> setInt(LocalStorageKey key, int value) async {
    await _preferences.setInt(key.identifier, value);
  }

  @override
  Future<void> remove(LocalStorageKey key) {
    return _preferences.remove(key.identifier);
  }

  @override
  Future<void> clearUserRelatedData() async {
    for (final key in _keys.where((key) => key.isUserRelated)) {
      await remove(key);
    }
  }
}
