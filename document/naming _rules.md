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
    - 自動生成ファイルがentity名+Providerになる
            - riverpod_generaterの仕様

    - 通常のProvider・Future・Stream
        - entity名で作成

    - Notifier
        - entity名+State

    - AsyncNotifier
        - usecase
            
    - ファイル名
        - 作りたいメソッド名+provider
            - 例(hogeStateを作る場合)
                - hoge_state_provider
