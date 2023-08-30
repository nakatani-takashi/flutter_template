# flutter_template

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

- アプリアイコン設定
    - pubspec.yamlのflutter_launcher_iconsに設定したい画像を設定する
    - adaptive_icon_foregroundには設定したい画像の50%サイズ+背景透過のものを設定
    - adaptive_icon_backgroundにはアプリアイコンに設定した画像の背景色と同じ色を設定
        - https://pub.dev/packages/flutter_launcher_icons

- ナビゲーション
    - go_router + go_router_builder
        - https://pub.dev/packages/go_router
        - https://pub.dev/packages/go_router_builder
    - ボトムナビゲーション実装の参考元
        - https://github.com/hukusuke1007/go_router_sample
        - https://codewithandrea.com/articles/flutter-bottom-navigation-bar-nested-routes-gorouter/
        - https://zenn.dev/flutteruniv_dev/articles/20220801-135028-flutter-go-router-builder

        - https://zenn.dev/pside/articles/9194274980bf76
            - やれたらいいけどできなかった(言語仕様が変わった？？)

- ロガー
    - simple_logger
        - https://pub.dev/packages/simple_logger
    - 他の検討候補
        - https://zenn.dev/flutteruniv_dev/articles/20220413-153500-flutter-logger

- 状態管理
    - Riverpod v2
        - https://docs-v2.riverpod.dev/docs/introduction/why_riverpod
    - freezed
        - https://pub.dev/packages/freezed
    - json_serializable
        - https://pub.dev/packages/json_serializable