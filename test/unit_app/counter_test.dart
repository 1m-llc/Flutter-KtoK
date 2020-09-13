import 'package:flutter_test/flutter_test.Dart';

void main() {
  /// 複数のテストを実行する場合はgroupで囲む
  group('Counter', () {
    test('Counterの数は1増えるはず', () {
      final counter = Counter();
      counter.increment();
      expect(counter.value, 1);
    });
    test('Counterの数は1減るはず', () {
      final counter = Counter();
      counter.decrement();
      expect(counter.value, -1);
    });
  });
}

class Counter {
  int value = 0;
  void increment() => value++;
  void decrement() => value--;
}