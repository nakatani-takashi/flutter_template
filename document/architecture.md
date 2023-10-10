## アーキテクチャ構成

- lib
    - const
        - 定数管理
        - 各レイヤー毎に切る

    -  data
        - local
            - ローカルストレージ管理

        - api
            - api管理

        - repository
            - リポジトリ置き場
            - 各レイヤー毎に切る

    - domain
        - core
            - type
            - api
                - retrofit(例)

        - entity
            - auth(例)
                - response
                - request
        - ui
            - ui用のentity
            - entity名に作ると密になり過ぎてわかりにくいので分離
            - viewEntity等がこちら

        - ドメイン管理
        - 各apiレイヤー毎に切る

    - presentation
        - extension
            - 便利な関数置き場
            - 増え過ぎたらレイヤー毎に切ってもいいかも
        - navigation
            - ナビゲーション管理
            - 各uiレイヤー毎に切る
        - ui
            - core
                - widget

            - domein名
                - widget
                    - domain内で使い回すコンポーネント
                    - 特に使いまわさないのであれば必ず作る必要はない
                    - 全体で使い回すものに関してはcore/widgetに集約する

                - page.dart
                    - 画面の基幹となるコンポーネント
                    - AsyncValueなどのProviderを集約し、ViewEntityに詰めてScreenに橋渡しする
                - screen.dart
                    - UI部分
                    - StatelessもしくはHookWidget
                        - refは渡さない
                - section
                    - 使いまわさずscreenにのみ参照されるコンポーネント
                    - 主にファイルの見通しをよくするために分割するときに使用
                    - 必ず作る必要はない
                - domeinが大きく複数の画面ができる場合は更に役割毎にディレクトリを切り、その中にpage・screen・sectionを入れる
                    - 使いまわさないけどコードの見通しをよくするためにwidgetディレクトを切るのもアリ(大体はsectionで事足りそう)
                - [例](/lib/presentation/ui/template)

            - ui管理
            - 各uiレイヤー毎に切る
        - theme
            - テーマ管理

    - provider
        - api
        - core
        - navigation
        - ui
            - 各レイヤー毎に切る

    - util
        - 汎用的なものの置き場
        - logger系等