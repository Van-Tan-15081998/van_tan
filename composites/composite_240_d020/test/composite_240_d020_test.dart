import 'package:flutter_test/flutter_test.dart';

import 'package:composite_240_d020/composite_240_d020.dart';

void main() {
  test('adds one to input values', () {
    final calculator = Calculator();
    expect(calculator.addOne(2), 3);
    expect(calculator.addOne(-7), -6);
    expect(calculator.addOne(0), 1);
  });
}
