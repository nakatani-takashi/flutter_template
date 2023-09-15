import 'package:shared_preferences/shared_preferences.dart';

class SharedPreferencesInstance {
  static late final SharedPreferences _prefs;
  SharedPreferences get prefs => _prefs;

  static final SharedPreferencesInstance _instance =
      SharedPreferencesInstance._internal();

  SharedPreferencesInstance._internal();

  factory SharedPreferencesInstance() => _instance;

  static initialize() async {
    _prefs = await SharedPreferences.getInstance();
  }
}
