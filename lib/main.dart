import 'package:flutter/material.dart';
import 'package:flutter_template/app.dart';
import 'package:flutter_template/data/local/shared_preferences/preference_key_type.dart';
import 'package:flutter_template/data/local/shared_preferences/shared_preferences_instance.dart';
import 'package:flutter_template/util/logger.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final tab1PageCountProvider = StateProvider.autoDispose((ref) => 0);
final tab2PageCountProvider = StateProvider.autoDispose((ref) => 0);
final secondPageCountProvider = StateProvider.autoDispose((ref) => 0);
final thirdPageCountProvider = StateProvider.autoDispose((ref) => 0);
final attentionPageCountProvider = StateProvider.autoDispose((ref) => 0);

/// dotenvを使う場合はこっち
// Future main() async {
//   //todo: おまじない
//   //https://zenn.dev/semapho/articles/7399def07247ec
//   //https://api.flutter.dev/flutter/widgets/WidgetsFlutterBinding-class.html
//   //https://qiita.com/kurun_pan/items/04f34a47cc8cee0fe542
//   WidgetsFlutterBinding.ensureInitialized();
//   Logger.configure();
//   final envFileName =
//       stringToFlavor(const String.fromEnvironment(DartDefinesKey.flavor))
//           .envFileName;
//   await dotenv.load(fileName: envFileName);
//   runApp(const ProviderScope(child: App()));
// }

Future main() async {
  //todo: おまじない
  //https://zenn.dev/semapho/articles/7399def07247ec
  //https://api.flutter.dev/flutter/widgets/WidgetsFlutterBinding-class.html
  //https://qiita.com/kurun_pan/items/04f34a47cc8cee0fe542
  WidgetsFlutterBinding.ensureInitialized();
  await SharedPreferencesInstance.initialize(); //SharedPreferencesInstanceの初期化
  Logger.configure();
  PreferenceKeyType.userId.setString("hogehoge");
  runApp(const ProviderScope(child: App()));
}
