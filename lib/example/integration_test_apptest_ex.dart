/// app_test.dart
import 'package:flutter_driver/flutter_driver.dart';
import 'package:test/test.dart';

void main() {
  group('Counter App', () {
    /// keyが「counter」、「increment」のWidgetを取得する
    final counterTextFinder = find.byValueKey('counter');
    final buttonFinder = find.byValueKey('increment');

    FlutterDriver driver;

    /// テスト実施前に、「Flutter driver」に接続する.
    setUpAll(() async {
      driver = await FlutterDriver.connect();
    });

    /// 「Flutter driver」との接続をテスト実施後に閉じる.
    tearDownAll(() async {
      if (driver != null) {
        driver.close();
      }
    });

    test('最初の値は「0」である.', () async {
      expect(await driver.getText(counterTextFinder), "0");
    });

    test('「increment」ボタンを押すと値が「1」増える.', () async {
      /// ボタンをタップする
      await driver.tap(buttonFinder);

      /// テキストの値が「1」になっていることを確認する.
      expect(await driver.getText(counterTextFinder), "1");
    });
  });
}




