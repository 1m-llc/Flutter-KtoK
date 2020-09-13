/// app.dart
import 'package:flutter_driver/driver_extension.dart';
// ↓正しくは「import 'i_counter.dart' as app;」
import 'integration_test_icounter_ex.dart' as app;

void main() {
  /// 「Flutter Driver Extension」を有効化することで、Integration Testを実行可能にする.
  enableFlutterDriverExtension();

  /// カウンターWidgetのmainメソッドを実行する
  app.main();
}
