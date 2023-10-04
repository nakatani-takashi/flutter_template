import 'package:flutter/material.dart';
import 'package:flutter_template/app.dart';
import 'package:flutter_template/data/local/secure_storage/secure_storage_instance.dart';
import 'package:flutter_template/data/local/shared_preferences/preference_key_type.dart';
import 'package:flutter_template/data/local/shared_preferences/shared_preferences_instance.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final tab1PageCountProvider = StateProvider.autoDispose((ref) => 0);
final tab2PageCountProvider = StateProvider.autoDispose((ref) => 0);
final secondPageCountProvider = StateProvider.autoDispose((ref) => 0);
final thirdPageCountProvider = StateProvider.autoDispose((ref) => 0);
final attentionPageCountProvider = StateProvider.autoDispose((ref) => 0);

Future<dynamic> main() async {
  //to-do: おまじない
  //https://zenn.dev/semapho/articles/7399def07247ec
  //https://api.flutter.dev/flutter/widgets/WidgetsFlutterBinding-class.html
  //https://qiita.com/kurun_pan/items/04f34a47cc8cee0fe542
  WidgetsFlutterBinding.ensureInitialized();

  await _initialize();
  runApp(const ProviderScope(child: App()));
}

Future<void> _initialize() async {
  SecureStorageInstance.initialize(); //SecureStorageInstanceの初期化
  await SharedPreferencesInstance.initialize(); //SharedPreferencesInstanceの初期化
  await PreferenceKeyType.userId.setString('hogehoge');
}
