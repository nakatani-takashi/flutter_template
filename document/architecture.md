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