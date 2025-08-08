import 'package:flutter/widgets.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:testing_flutter_apps/main.dart';

void main() {
  // test("the cakculator return 4 when adding 2 and 2", () {
  //   //step 1 - setup phase =>initilize the object

  //   //step2 - side effects => collect the result we want to test
  //   final result = calculator.add(2, 3);

  //   //step 3 => expectations => compare the expected value with the result got
  //   expect(result, 5, reason: "The test results must be exactly 5");
  // });

  group("Test revesring a string", () {

    
    test("Testing reversing lowercase letter", () {
      String initial = "Rahul";
      String reversed = reverse(initial: initial);
      expect(reversed, 'luhaR');
    });
  });
}
