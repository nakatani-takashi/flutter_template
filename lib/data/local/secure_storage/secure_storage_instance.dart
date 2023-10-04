import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class SecureStorageInstance {
  factory SecureStorageInstance() => _instance;

  SecureStorageInstance._internal();
  static late final FlutterSecureStorage _secureStorage;
  FlutterSecureStorage get secureStorage => _secureStorage;

  static final SecureStorageInstance _instance =
      SecureStorageInstance._internal();

  static void initialize() {
    _secureStorage = const FlutterSecureStorage();
  }
}
