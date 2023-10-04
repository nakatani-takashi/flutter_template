import 'package:shared_preferences/shared_preferences.dart';

class SharedPreferencesInstance {

  factory SharedPreferencesInstance() => _instance;

  SharedPreferencesInstance._internal();
  static late final SharedPreferences _prefs;
  SharedPreferences get prefs => _prefs;

  static final SharedPreferencesInstance _instance =
      SharedPreferencesInstance._internal();

  static Future<void> initialize() async {
    _prefs = await SharedPreferences.getInstance();
  }
}
