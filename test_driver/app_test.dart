import 'package:flutter_driver/flutter_driver.dart';

import 'package:test/test.dart';

void main() {
  group("String reverse app test", () {
    late FlutterDriver driver;

    setUpAll(() async {
      driver = await FlutterDriver.connect();
    });
    tearDownAll(() {
      driver.close();
    });
    var textField = find.byType("TextField");
    var button = find.text('Reverse');
    var reverse = find.text('luhaR');
    test("reverses a string", () async {
      await driver.tap(textField);
      await Future.delayed(Duration(seconds: 2));
      await driver.enterText("Rahul");
      await Future.delayed(Duration(seconds: 2));
      await driver.waitForAbsent(reverse);
      await driver.tap(button);
      await Future.delayed(Duration(seconds: 2));
      await driver.waitFor(reverse);
      await driver.waitUntilNoTransientCallbacks();
    });
  });
}
