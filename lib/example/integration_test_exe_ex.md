フォルダ構成
/
  ∟ /test_driver
    ∟ /app.dart ← テスト実行
    ∟ /app_test.app
    ∟ /i_counter.app

以下のコマンドを「/」の場所で実行
$ flutter drive --target=test_driver/app.dart

> All tests passed!
と出力できれば成功.

失敗時には以下のように出力される.
> Some tests failed.




