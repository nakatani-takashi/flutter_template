// ignore_for_file: avoid_print, lines_longer_than_80_chars

import 'dart:convert';
import 'dart:io';

void main() {
  print('''
-------------------------------------------
🚀 導線作成に必要なファイルを生成します。

以下のステップに従って必要事項を入力して下さい。

1️⃣ 生成するファイル名をカンマ区切りで入力してください
   - page,screen,view_entity,route,パスの生成に必要
   - template_1と入力するとtemplate_1_screen.dartやtemplate_1_route.dart等が生成
   - 入力例: template_1,template_2

2️⃣ ファイルを作成するディレクトリ名を入力してください:
   - page,screenを格納するディレクトリを指定
   - my_pageディレクトリ内にtemplatesを作成し、その中にpage,screenを作成したい場合はmy_page/templates
   - 入力例: templates

3️⃣ パスを追加するクラス名を入力してください:
   - lib/const/core/navigation.dartにパスを追加します。
   - 追加したいクラスを指定して下さい。
   - クラス名が見つからない場合は新たにクラスが作成されます。
   - 入力例: TemplateRouteConst

👆 手動でやること:
   - ルーティングの定義（GoRouterの設定は手動で行って下さい）
   - 画面遷移の実装

📝 注意:
   - ファイル名やディレクトリ名にスペースは使用しないでください。
   - 特殊文字はエラーの原因となる可能性があります。
   - 出力内容が正しいか確認して下さい。

✅ 入力が完了したら、エンターキーを押して次に進んでください。
-------------------------------------------
''');

  final (input, dirInput, className) = getUserInput();

  if (input == null || input.isEmpty) {
    print('ファイル名が指定されていません。');
    return;
  }

  if (dirInput == null || dirInput.isEmpty) {
    print('ディレクトリ名が指定されていません。');
    return;
  }

  if (className == null || className.isEmpty) {
    print('クラス名または定数の名前が入力されていません。');
    return;
  }

  // ファイル名をリストに変換
  final fileNames = input.split(',');

  // Routeの作成
  _createGoRouteRoutes(fileNames, dirInput);
  // ViewEntityの作成
  _createDataClasses(fileNames, dirInput);
  // Page,Screenの作成
  _createPagesAndScreens(fileNames, dirInput);
  // Routeのパスをlib/const/core/navigation.dartに追加
  _createRoutePath(
    fileNames,
    dirInput,
    className,
  );
}

/// ユーザの入力情報を取得
(String? input, String? dirInput, String? className) getUserInput() {
  print('1. 生成するファイル名をカンマ区切りで入力してください（ex: template_1,template_2）');
  final input = stdin.readLineSync(encoding: utf8)?.replaceAll(' ', '');

  print('2. ファイルを作成するディレクトリ名を入力してください（ex: templates）');
  final dirInput = stdin.readLineSync(encoding: utf8)?.replaceAll(' ', '');

  print('3. パスを追加するクラス名を入力してください（ex: AuthRouteConst）');
  final className = stdin.readLineSync(encoding: utf8)?.replaceAll(' ', '');

  return (
    input,
    dirInput,
    className,
  );
}

/// Routeファイルを作成
void _createGoRouteRoutes(List<String> fileNames, String dirInput) {
  final directoryPath = 'lib/presentation/navigation/routes/$dirInput';
  final directory = Directory(directoryPath);
  if (!directory.existsSync()) {
    directory.createSync(recursive: true);
  }

  for (final fileName in fileNames) {
    final trimmedFileName = fileName.trim();
    final className = _toClassName(trimmedFileName);
    final routeFilePath = '$directoryPath/${trimmedFileName}_route.dart';
    final routeContent = _getRouteContent(trimmedFileName, className, dirInput);
    File(routeFilePath).writeAsStringSync(routeContent);
    print('Routeファイルが生成されました: $routeFilePath');
  }
}

String _getRouteContent(String fileName, String className, String dir) {
  return '''
import 'package:flutter/material.dart';
import 'package:flutter_template/presentation/ui/$dir/$fileName/${fileName}_page.dart';
import 'package:flutter_template/provider/navigation/go_router_provider.dart';
import 'package:go_router/go_router.dart';

// $className（Figmaの画面名とidを手動で入れる）
class ${className}Route extends GoRouteData {
  const ${className}Route();

  @override
  Widget build(BuildContext context, GoRouterState state) =>
      const ${className}Page();

  static final GlobalKey<NavigatorState> \$parentNavigatorKey = rootNavigatorKey;
}
''';
}

/// View Entityを作成
void _createDataClasses(List<String> fileNames, String dirInput) {
  final baseDirectoryPath = 'lib/domain/ui/$dirInput';
  final baseDirectory = Directory(baseDirectoryPath);
  if (!baseDirectory.existsSync()) {
    baseDirectory.createSync(recursive: true);
  }

  for (final fileName in fileNames) {
    final trimmedFileName = fileName.trim();
    final className = '${_toClassName(trimmedFileName)}ScreenEntity';
    final filePath = '$baseDirectoryPath/${trimmedFileName}_screen_entity.dart';
    final content = _getViewEntityContent(className, trimmedFileName);
    File(filePath).writeAsStringSync(content);
    print('ViewEntityのファイルが生成されました: $filePath');
  }
}

String _getViewEntityContent(String className, String fileName) {
  return '''
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part '${fileName}_screen_entity.freezed.dart';

@freezed
class $className with _\$$className {
  factory $className({
    required String pageName,
    required VoidCallback goNext,
  }) = _$className;
}
''';
}

/// Page,Screenを作成
void _createPagesAndScreens(List<String> fileNames, String dirInput) {
  final baseDirectoryPath = 'lib/presentation/ui/$dirInput';
  final baseDirectory = Directory(baseDirectoryPath);
  if (!baseDirectory.existsSync()) {
    baseDirectory.createSync(recursive: true);
  }

  for (final fileName in fileNames) {
    final trimmedFileName = fileName.trim();
    final className = _toClassName(trimmedFileName);
    final specificDirectoryPath = '$baseDirectoryPath/$trimmedFileName';
    final specificDirectory = Directory(specificDirectoryPath);
    if (!specificDirectory.existsSync()) {
      specificDirectory.createSync(recursive: true);
    }

    final pageFilePath = '$specificDirectoryPath/${trimmedFileName}_page.dart';
    final pageContent = _getPageContent(trimmedFileName, className, dirInput);
    File(pageFilePath).writeAsStringSync(pageContent);

    final screenFilePath =
        '$specificDirectoryPath/${trimmedFileName}_screen.dart';
    final screenContent =
        _getScreenContent(trimmedFileName, className, dirInput);
    File(screenFilePath).writeAsStringSync(screenContent);

    print('ページとスクリーンのファイルが生成されました:');
    print(pageFilePath);
    print(screenFilePath);
  }
}

String _getPageContent(String fileName, String className, String dir) {
  final variableName = _toVariableName(fileName);
  return '''
import 'package:flutter/material.dart';
import 'package:flutter_template/domain/ui/$dir/${fileName}_screen_entity.dart';
import 'package:flutter_template/presentation/extension/loading_state_updater.dart';
import 'package:flutter_template/presentation/ui/$dir/$fileName/${fileName}_screen.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class ${className}Page extends ConsumerWidget {
  const ${className}Page({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      ///to-do: Screenに渡すasyncValueを全てloadingStateUpdaterに渡す
      /// 使うasyncValueを全て渡すことでLoadingStateが自動更新される
      loadingStateUpdater(
        asyncValueList: [],
        widgetRef: ref,
        context: context,
      );
    });

    return ${className}Screen(
      ${variableName}Entity: ${className}ScreenEntity(
        pageName: '',
        goNext: () {},
      ),
    );
  }
}
''';
}

String _getScreenContent(String fileName, String className, String dir) {
  // ファイル名から変数名を生成
  final variableName = _toVariableName(fileName);

  return '''
import 'package:flutter/material.dart';
import 'package:flutter_template/domain/ui/$dir/${fileName}_screen_entity.dart';

class ${className}Screen extends StatelessWidget {
  const ${className}Screen({super.key, required this.${variableName}Entity});
  final ${className}ScreenEntity ${variableName}Entity;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Text(''),
            ElevatedButton(
              onPressed: ${variableName}Entity.goNext,
              child: const Text('Go Next'),
            ),
          ],
        ),
      ),
    );
  }
}
''';
}

/// パスを追加
void _createRoutePath(
  List<String> fileNames,
  String dirInput,
  String className,
) {
  const filePath = 'lib/const/core/navigation.dart';

  final file = File(filePath);
  if (!file.existsSync()) {
    print('指定されたファイルが存在しません: $filePath');
    return;
  }

  var content = file.readAsStringSync();

  final buffer = StringBuffer();

  if (!content.contains('class $className')) {
    buffer
      ..writeln('\n\nclass $className {')
      ..writeln('  const $className._();');
    for (final name in fileNames) {
      buffer.writeln(
        '  static const ${_toCamelCase(name)}RoutePath = \'${name}_page\';',
      );
    }
    buffer.writeln('}');
  } else {
    final classPattern = RegExp('class $className \\{([\\s\\S]*?)\\}');
    final match = classPattern.firstMatch(content);

    if (match != null) {
      final classContent = match.group(1) ?? '';
      final classBuffer = StringBuffer(classContent);
      for (final name in fileNames) {
        if (!classContent.contains('${_toCamelCase(name)}RoutePath')) {
          classBuffer.writeln(
            '  static const ${_toCamelCase(name)}RoutePath = \'${name}_page\';',
          );
        }
      }
      content = content.replaceFirst(
        classPattern,
        'class $className {$classBuffer}',
      );
    }
  }

  file.writeAsStringSync(content);
  print('ファイルが更新されました: $filePath');
}

String _toClassName(String fileName) {
  return fileName
      .split('_')
      .map((e) => e[0].toUpperCase() + e.substring(1))
      .join();
}

String _toVariableName(String fileName) {
  final parts = fileName.split('_');
  return parts.first +
      parts.skip(1).map((e) => e[0].toUpperCase() + e.substring(1)).join();
}

String _toCamelCase(String text) {
  return text.split('_').map((e) => e[0].toLowerCase() + e.substring(1)).join();
}
