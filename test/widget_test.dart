import 'package:flutter/widgets.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:testing_flutter_apps/main.dart';

import 'package:flutter/material.dart';

void main() {
  group("Widget testing for main", () {
    testWidgets("Testing text field widget", (WidgetTester tester) async {
      print("🔄 Pumping CalculatorApp widget into the test environment...");
      await tester.pumpWidget(
        CalculatorApp(),
      );

      var textField = find.byKey(const Key("text_to_reverse"));
      expect(textField, findsOneWidget);
      await tester.enterText(textField, 'Rahul');
      expect(find.text('Rahul'), findsOneWidget);
      var button = find.byKey(Key('reverse_button'));
      expect(button, findsOneWidget);
      await tester.tap(button);
      await tester.pump();
      expect(find.text('luhaR'), findsOneWidget);

      print("🎉 Test completed successfully!");
    });
  });
}
