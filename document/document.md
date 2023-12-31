## 参考資料

- UI
    - [未完】FlutterUIを極める](https://zenn.dev/cxj/books/07def04506182d)
        - 色々載ってて参考になりそう
    - [ページネーション参考](https://zenn.dev/k9i/articles/b8c333e1bb8b9b)
    - [snackbar](https://flutter.salon/flutter/snackbar/)
    - [AsyncValue を使ってローディング表示、ダイアログ表示、スナックバー表示の共通化をしてみた](https://zenn.dev/flutteruniv_dev/articles/20221214-090833-flutter-async-value)
    - [OSシステム設定画面](https://qiita.com/ling350181/items/c4726b57e8b00a266174)
    - [カメラ機能](https://zenn.dev/mamushi/articles/flutter_camera)
    - [地図パッケージを比較してみた](https://zenn.dev/odaken/articles/615f12930c7f5d)
    - [詳解 TableCalendar](https://zenn.dev/rafekun/articles/0d91235356ac2a)

- 日本語対応
    - Flutterの漢字は中華漢字になってしまうので[ここ](../assets/fonts)にフォントを導入してapp.dartで設定している
        - 各weightの対応は[ここ](../pubspec.yaml)
        - https://fonts.google.com/noto/specimen/Noto+Sans+JP
        - https://gaprot.jp/2022/03/28/flutter_dev_bugfix_text/

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
                - 対応した[routers](/lib/presentation/navigation/routers)
                - どうやらpart分けしなくてもできるようになったみたい

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

    - json_serializableとretrofit_generatorの自動生成順でtoJSONが生えない問題の解決法
        - https://github.com/trevorwang/retrofit.dart/issues/609

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
                    - 無理に統合するのではなくrepositoryを適切に切るのが良さそう
                - paginationの参考にもなる

        - MVVM
            - https://wasabeef.medium.com/flutter-%E3%82%92-mvvm-%E3%81%A7%E5%AE%9F%E8%A3%85%E3%81%99%E3%82%8B-861c5dbcc565
            - https://terupro.net/flutter-mvvm-riverpod-sample/
            - https://github.com/terupro/clima
