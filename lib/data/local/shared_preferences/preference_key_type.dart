import 'package:flutter_template/data/local/shared_preferences/shared_preferences_instance.dart';

enum PreferenceKeyType { userId, authenticationToken }

extension PreferenceKeyTypeEx on PreferenceKeyType {
  String get keyString {
    return switch (this) {
      PreferenceKeyType.userId => PreferenceKeyType.userId.name,
      PreferenceKeyType.authenticationToken =>
        PreferenceKeyType.authenticationToken.name
    };
  }

  Future<bool> setInt(int value) async {
    return SharedPreferencesInstance().prefs.setInt(keyString, value);
  }

  int? getInt({int? defaultValue}) {
    if (SharedPreferencesInstance().prefs.containsKey(keyString)) {
      return SharedPreferencesInstance().prefs.getInt(keyString);
    } else {
      return defaultValue;
    }
  }

  Future<bool> setString(String value) async {
    return SharedPreferencesInstance().prefs.setString(keyString, value);
  }

  String? getString({String? defaultValue}) {
    if (SharedPreferencesInstance().prefs.containsKey(keyString)) {
      return SharedPreferencesInstance().prefs.getString(keyString);
    } else {
      return defaultValue;
    }
  }

  Future<bool> setBool({required bool setBool}) async {
    return SharedPreferencesInstance().prefs.setBool(keyString, setBool);
  }

  bool getBool() {
    return SharedPreferencesInstance().prefs.getBool(keyString) ?? false;
  }
}
