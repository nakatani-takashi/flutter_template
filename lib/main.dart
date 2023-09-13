import 'package:flutter/material.dart';
import 'package:flutter_template/app.dart';
import 'package:flutter_template/utils/logger.dart';
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

main() {
  //todo: おまじない
  //https://zenn.dev/semapho/articles/7399def07247ec
  //https://api.flutter.dev/flutter/widgets/WidgetsFlutterBinding-class.html
  //https://qiita.com/kurun_pan/items/04f34a47cc8cee0fe542
  WidgetsFlutterBinding.ensureInitialized();
  Logger.configure();
  runApp(const ProviderScope(child: App()));
}
