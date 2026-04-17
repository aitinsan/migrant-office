export 'local_storage_impl.dart';

abstract interface class LocalStorage {
  bool? getBool(LocalStorageKey key);

  Future<void> setBool(LocalStorageKey key, bool value);

  String? getString(LocalStorageKey key);

  Future<void> setString(LocalStorageKey key, String value);

  int? getInt(LocalStorageKey key);

  Future<void> setInt(LocalStorageKey key, int value);

  Future<void> remove(LocalStorageKey key);

  Future<void> clearUserRelatedData();
}

/// Abstract class that defines the contract for local storage key management.
///
/// This class serves as a base interface for implementing local storage key
/// constants and managing collections of storage keys, particularly those
/// related to user data.
abstract class LocalStorageKey {
  /// A unique identifier string for the storage key
  abstract final String identifier;

  /// A boolean indicating whether the storage key is related to user data.
  abstract final bool isUserRelated;
}