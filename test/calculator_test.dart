import 'package:flutter_test/flutter_test.dart';
import 'package:testing_flutter_apps/src/calculator.dart';

void main() {
  test("the cakculator return 4 when adding 2 and 2", () {
    //step 1 - setup phase =>initilize the object
    final calculator = Calculator();

    //step2 - side effects => collect the result we want to test
    final result = calculator.add(2, 3);

    //step 3 => expectations => compare the expected value with the result got
    expect(result, 5);
  });
}
