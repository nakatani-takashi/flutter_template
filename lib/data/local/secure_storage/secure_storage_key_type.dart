import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:flutter_template/data/local/secure_storage/secure_storage_instance.dart';
import 'package:flutter_template/util/logger.dart';

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

  Future<bool> setValue(String value) async {
    try {
      await SecureStorageInstance()
          .secureStorage
          .write(key: keyString, value: value);
      return true;
    } on Exception catch (e) {
      logger.e(e);
      return false;
    }
  }

  Future<String?> getValue() async {
    try {
      return await SecureStorageInstance()
          .secureStorage
          .read(key: keyString, aOptions: _getAndroidOptions());
    } on Exception catch (e) {
      logger.e(e);
      return null;
    }
  }

  Future<Map<String, String>?> getAllValue() async {
    try {
      return await SecureStorageInstance()
          .secureStorage
          .readAll(aOptions: _getAndroidOptions());
    } on Exception catch (e) {
      logger.e(e);
      return null;
    }
  }

  Future<bool> deleteValue() async {
    try {
      await SecureStorageInstance()
          .secureStorage
          .delete(key: keyString, aOptions: _getAndroidOptions());
      return true;
    } on Exception catch (e) {
      logger.e(e);
      return false;
    }
  }

  Future<bool> deleteAllValue() async {
    try {
      await SecureStorageInstance()
          .secureStorage
          .deleteAll(aOptions: _getAndroidOptions());
      return true;
    } on Exception catch (e) {
      logger.e(e);
      return false;
    }
  }
}
