import 'dart:convert';

import 'package:core/core.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class SecureStorageImpl implements SecureStorage {
  const SecureStorageImpl({
    required FlutterSecureStorage storage,
    required List<SecureStorageKey> keys,
  }) : _storage = storage,
       _keys = keys;

  final FlutterSecureStorage _storage;

  final List<SecureStorageKey> _keys;

  @override
  Future<String?> getValue(SecureStorageKey key) async {
    return _storage.read(key: key.identifier);
  }

  @override
  Future<void> setValue(SecureStorageKey key, String value) async {
    return _storage.write(key: key.identifier, value: value);
  }

  @override
  Future<void> deleteValue(SecureStorageKey key) async {
    return _storage.delete(key: key.identifier);
  }

  @override
  Future<T?> getJson<T>(
    SecureStorageKey key, {
    required DataParser<T> parser,
  }) async {
    final jsonString = await getValue(key);
    if (jsonString == null) return null;
    final data = jsonDecode(jsonString);
    return tryOrNull(() => parser.parse(data));
  }

  @override
  Future<void> saveJson(SecureStorageKey key, Object data) async {
    final value = jsonEncode(data);
    await setValue(key, value);
  }

  @override
  Future<void> clearUserRelatedData() async {
    for (final key in _keys.where((key) => key.isUserRelated)) {
      await deleteValue(key);
    }
  }
}
