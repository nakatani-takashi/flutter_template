# flutter_template

## コマンド

- コマンドはMakefileに集約している
    - flutter_template/Makefile
- コマンドが増えた時はこちらに集約することを検討する

## 環境構築

- コーディング規約
    - 参考記事
        - https://qiita.com/simonritchie/items/daa7c58778660696417e

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
    - 型安全な値渡し遷移
        - https://pub.dev/documentation/go_router/latest/topics/Type-safe%20routes-topic.html
    - 参考記事
        - https://migisanblog.com/flutter-go-router-use/


- ロガー
    - logger
        - https://pub.dev/packages/logger
    - 他の検討候補
        - https://zenn.dev/flutteruniv_dev/articles/20220413-153500-flutter-logger

- 状態管理
    - Riverpod v2
        - https://docs-v2.riverpod.dev/docs/introduction/why_riverpod
        - 参考記事
            - https://zenn.dev/10_tofu_01/articles/try_riverpod_generator
            - https://zenn.dev/chmod644/articles/baf559e46a0794
            - https://zenn.dev/riscait/books/flutter-riverpod-practical-introduction/viewer/introduction
            - https://zenn.dev/riscait/books/flutter-riverpod-practical-introduction-archive
            - https://zenn.dev/flutteruniv_dev/articles/riverpod_generator_in_action
            - https://zenn.dev/koji_1009/articles/18a8a54b615ae7

    - riverpod_generator
        - https://pub.dev/packages/riverpod_generator
        - 参考記事
            - https://zenn.dev/flutteruniv_dev/articles/riverpod_generator_in_action
    - freezed
        - https://pub.dev/packages/freezed
    - json_serializable
        - https://pub.dev/packages/json_serializable

- api通信
    - retrofit
        - https://pub.dev/packages/retrofit
    - dio
        - https://pub.dev/packages/dio
    - 参考記事
        - https://www.egao-inc.co.jp/tech/flutter_retrofit/
        - テスト
            - https://zenn.dev/shimizu_saffle/articles/http-mock-adapter

- ローカルDB
    - shared_preferences
        - https://pub.dev/packages/shared_preferences
        - 参考記事
            - https://zenn.dev/riscait/books/flutter-riverpod-practical-introduction-archive/viewer/v0-shared-preferences
            - https://zenn.dev/chmod644/articles/baf559e46a0794
            - https://blog.dalt.me/2356
    - flutter_secure_storage
        - https://pub.dev/packages/flutter_secure_storage
        - shared_preferencesが平文保存なのでセキュア情報を扱うならこっちを使うしかない
    - 参考記事
        - https://medium.com/@mustafatahirhussein/shared-preferences-or-flutter-secure-storage-which-is-better-to-use-e6b6a0a4fcfc

- ローカルプロパティ
    - 普通に自作すればいいのでは感がすごい

    - この辺はやってみたもののライブラリ使ってやるほどのことか？？感凄かったのでやめた
        - flutter_dotenv
            - https://pub.dev/packages/flutter_dotenv
        - envied
            - https://pub.dev/packages/envied
            - 型安全に呼び出せるのでこっちのが良さそう(変なinit処理もないし)
                - https://zenn.dev/8rine23/scraps/f097a9505cbe7b

- アーキテクチャ

    - 採用
        - MVC(？)
                - https://codewithandrea.com/articles/data-mutations-riverpod/
                - 名前がよくわからんけどこのような感じでやるのがよさそうに感じる

    - 不採用(参考になるのでメモ代わりに置いている)
        - 非MVVM
            - https://techblog.enechain.com/entry/flutter-rearchitecture-from-mvvm
                - 結構良さそう、ただ統合しないというのは一つのAPIで完結するのであればいいけど複数のAPIを統合する必要がある場合は統合する必要があるので話半分ぐらいに思った方が良さそう
        - MVVM
            - https://wasabeef.medium.com/flutter-%E3%82%92-mvvm-%E3%81%A7%E5%AE%9F%E8%A3%85%E3%81%99%E3%82%8B-861c5dbcc565
            - https://terupro.net/flutter-mvvm-riverpod-sample/
            - https://github.com/terupro/clima
