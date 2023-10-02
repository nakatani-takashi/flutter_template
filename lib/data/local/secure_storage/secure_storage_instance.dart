import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class SecureStorageInstance {
  static late final FlutterSecureStorage _secureStorage;
  FlutterSecureStorage get secureStorage => _secureStorage;

  static final SecureStorageInstance _instance =
      SecureStorageInstance._internal();

  SecureStorageInstance._internal();

  factory SecureStorageInstance() => _instance;

  static initialize() {
    _secureStorage = const FlutterSecureStorage();
  }
}
