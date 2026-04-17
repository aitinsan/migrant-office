import 'package:core/core.dart';

export 'secure_storage_impl.dart';

abstract interface class SecureStorage {
  Future<String?> getValue(SecureStorageKey key);

  Future<void> setValue(SecureStorageKey key, String value);

  Future<void> deleteValue(SecureStorageKey key);

  Future<T?> getJson<T>(SecureStorageKey key, {required DataParser<T> parser});

  Future<void> saveJson(SecureStorageKey key, Object data);

  Future<void> clearUserRelatedData();
}

/// Abstract class that defines the contract for secure storage key management.
///
/// This class serves as a base interface for implementing secure storage key
/// constants and managing collections of storage keys, particularly those
/// related to user data.
abstract class SecureStorageKey {
  /// A unique identifier string for the storage key
  abstract final String identifier;

  /// A boolean indicating whether the storage key is related to user data.
  abstract final bool isUserRelated;
}