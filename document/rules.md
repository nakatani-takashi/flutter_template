## 命名規則・コーディングルール

- core
    - 中核となるもの
    - 他でいうcommonと同じと思ってもらえればok

- data
    - repository
        - abstractでusecaseを定義し、implementsして動作を強制させる
        - abstractはprivate classで定義し、providerは同名open定義する
            - [例](lib/data/repository/httpbin_repository.dart)

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
            - abstractでusecaseを定義し、implementsして動作を強制させる
            - abstractはprivate classで定義し、providerは同名open定義する
                - [例](lib/provider/ui/httpbin/httpbin_usecase.dart)
            
    - ファイル名
        - 作りたいメソッド名+provider
            - 例(hogeStateを作る場合)
                - hoge_state_provider
