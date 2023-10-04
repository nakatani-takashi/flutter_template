## アーキテクチャ構成

- lib
    - const
        - 定数管理

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
                - retrofit
        - auth(例)
            - response
            - request

        - ドメイン管理
        - 各apiレイヤー毎に切る

    - presentation
        - navigation
            - ナビゲーション管理
            - 各uiレイヤー毎に切る
        - page
            - ui管理
            - 各uiレイヤー毎に切る
        - theme
            - テーマ管理

    - provider
        - api
        - core
        - navigation
        - 各レイヤー毎に切る

    - util
        - 汎用的なものの置き場
        - logger系等


## 命名規則

- core
    - 中核となるもの
    - 他でいうcommonと同じと思ってもらえればok

- domain
    - type
        - enum・sealed class
        - 命名例
            - hoge_type
    - response・request
        - apiの送りと返り
        - 命名例
            - hoge_request

- provider
    - 通常のProvider・Future・Stream
        - entity名で作成
        - 自動生成ファイルがentity名+Providerになる
            - riverpod_generaterの仕様
        - entity名で作成

    - Notifier
        - entity名+State

    - AsyncNotifier
        - controller
            - buildメソッドを使わないでFutureに分割するのであればusecaseで良さそう
            
    - ファイル名
        - 作りたいメソッド名+provider
            - 例(hogeStateを作る場合)
                - hoge_state_provider
