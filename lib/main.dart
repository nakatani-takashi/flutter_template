import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_template/domain/entity/type/dart_defines_type.dart';
import 'package:flutter_template/domain/entity/type/flavor_type.dart';
import 'package:flutter_template/navigation/animation/platform_animation.dart';
import 'package:flutter_template/navigation/router.dart';
import 'package:flutter_template/utils/logger.dart';

final tab1PageCountProvider = StateProvider.autoDispose((ref) => 0);
final tab2PageCountProvider = StateProvider.autoDispose((ref) => 0);
final secondPageCountProvider = StateProvider.autoDispose((ref) => 0);
final thirdPageCountProvider = StateProvider.autoDispose((ref) => 0);
final attentionPageCountProvider = StateProvider.autoDispose((ref) => 0);

Future main() async {
  //todo: おまじない
  //https://zenn.dev/semapho/articles/7399def07247ec
  //https://api.flutter.dev/flutter/widgets/WidgetsFlutterBinding-class.html
  //https://qiita.com/kurun_pan/items/04f34a47cc8cee0fe542
  WidgetsFlutterBinding.ensureInitialized();
  Logger.configure();
  final envFileName =
      stringToFlavor(const String.fromEnvironment(DartDefinesKey.flavor))
          .envFileName;
  await dotenv.load(fileName: envFileName);
  runApp(const ProviderScope(child: App()));
}

class App extends ConsumerWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final router = ref.watch(goRouter);
    return MaterialApp.router(
      title: 'go_router sample',
      theme: ThemeData(
          primarySwatch: Colors.blue, pageTransitionsTheme: platformAnimation),
      routerConfig: router,
    );
  }
}
