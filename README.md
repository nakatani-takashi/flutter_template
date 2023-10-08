# flutter_template

## コマンド

- コマンドはMakefileに集約している
    - flutter_template/Makefile
- コマンドが増えた時はこちらに集約することを検討する

## 環境構築

- FVM
    - https://zenn.dev/welchi/articles/d8f120adeebc7a85ed17
        - FVMをデフォルトのFlutterとしておくと楽なのでそこまでやる
            - https://zenn.dev/welchi/articles/d8f120adeebc7a85ed17#fvm%E3%81%A7%E3%82%A4%E3%83%B3%E3%82%B9%E3%83%88%E3%83%BC%E3%83%AB%E3%81%97%E3%81%9Fflutter%E3%82%92%E3%80%81%E3%83%87%E3%83%95%E3%82%A9%E3%83%AB%E3%83%88%E3%81%A8%E3%81%97%E3%81%A6%E4%BD%BF%E3%81%86

- Flavor設定
    - Firebaseの設定がandroid,iOS共にできていないのでやる
        - https://zenn.dev/altiveinc/articles/separating-environments-in-flutter#android%E3%82%A2%E3%83%97%E3%83%AA%E3%81%AB%E7%92%B0%E5%A2%83%E3%82%92%E5%8F%8D%E6%98%A0%E3%81%95%E3%81%9B%E3%82%8B%E3%81%9F%E3%82%81%E3%81%AB%E5%BF%85%E8%A6%81%E3%81%AA%E3%81%93%E3%81%A8
    - appNameをプロジェクト毎に変更する必要があるのでdart_definesの中のjsonファイルのappNameを変更する

- Splash設定
    - pubspec.yamlのflutter_native_splashに設定したい画像を設定する
        - https://pub.dev/packages/flutter_native_splash
        - 参考記事
            - https://zenn.dev/flutteruniv_dev/articles/20220406-061305-flutter-native-splash

- アプリアイコン設定
    - pubspec.yamlのflutter_launcher_iconsに設定したい画像を設定する
    - adaptive_icon_foregroundには設定したい画像の50%サイズ+背景透過のものを設定
    - adaptive_icon_backgroundにはアプリアイコンに設定した画像の背景色と同じ色を設定
        - https://pub.dev/packages/flutter_launcher_icons
