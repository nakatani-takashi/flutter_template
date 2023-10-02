import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:flutter_template/data/local/secure_storage/secure_storage_instance.dart';

enum SecureStorageKeyType { userId, authenticationToken }

extension SecureStorageKeyTypeEx on SecureStorageKeyType {
  String get keyString {
    return switch (this) {
      SecureStorageKeyType.userId => SecureStorageKeyType.userId.name,
      SecureStorageKeyType.authenticationToken =>
        SecureStorageKeyType.authenticationToken.name
    };
  }

  AndroidOptions _getAndroidOptions() => const AndroidOptions(
        encryptedSharedPreferences: true,
      );

  Future setValue(String value) async {
    return await SecureStorageInstance()
        .secureStorage
        .write(key: keyString, value: value);
  }

  Future<String?> getValue() async {
    return await SecureStorageInstance()
        .secureStorage
        .read(key: keyString, aOptions: _getAndroidOptions());
  }

  Future<Map<String, String>> getAllValue() async {
    return await SecureStorageInstance()
        .secureStorage
        .readAll(aOptions: _getAndroidOptions());
  }

  Future deleteValue() async {
    return await SecureStorageInstance()
        .secureStorage
        .delete(key: keyString, aOptions: _getAndroidOptions());
  }

  Future deleteAllValue() async {
    return await SecureStorageInstance()
        .secureStorage
        .deleteAll(aOptions: _getAndroidOptions());
  }
}
