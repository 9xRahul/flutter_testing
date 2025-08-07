import 'package:flutter_test/flutter_test.dart';
import 'package:testing_flutter_apps/src/calculator.dart';

void main() {
  // test("the cakculator return 4 when adding 2 and 2", () {
  //   //step 1 - setup phase =>initilize the object

  //   //step2 - side effects => collect the result we want to test
  //   final result = calculator.add(2, 3);

  //   //step 3 => expectations => compare the expected value with the result got
  //   expect(result, 5, reason: "The test results must be exactly 5");
  // });

  late Calculator calculator;

  setUp(() {
    print("initilized the calculator object");
    calculator = Calculator();
  });

  group('Addition', () {
    test('2 + 3 = 5', () => expect(calculator.add(2, 3), 5));
    test('0 + 0 = 0', () => expect(calculator.add(0, 0), 0));
    test('-5 + 10 = 5', () => expect(calculator.add(-5, 10), 5));
  });

  group('Subtraction', () {
    test('5 - 3 = 2', () => expect(calculator.subtract(5, 3), 2));
    test('0 - 0 = 0', () => expect(calculator.subtract(0, 0), 0));
    test('-5 - 5 = -10', () => expect(calculator.subtract(-5, 5), -10));
  });

  group('Multiplication', () {
    test('2 * 3 = 6', () => expect(calculator.multiply(2, 3), 6));
    test('0 * 1000 = 0', () => expect(calculator.multiply(0, 1000), 0));
    test('-2 * -3 = 6', () => expect(calculator.multiply(-2, -3), 6));
    test('-2 * 3 = -6', () => expect(calculator.multiply(-2, 3), -6));
  });

  group('Division', () {
    test('6 / 2 = 3', () => expect(calculator.divide(6, 2), 3));
    test('0 / 5 = 0', () => expect(calculator.divide(0, 5), 0));
    test('5 / 2 = 2.5', () => expect(calculator.divide(5, 2), 2.5));

    // OR if you want to throw exception on division by 0
    test('throws exception on divide by 0', () {
      expect(() => calculator.divide(5, 0), throwsArgumentError);
    });
  });

  group("Finding the power of two", () {
    test('return s 9 if value is 3', () async {
      expect(await calculator.powerOfTwo(3), 9);
    });
  });

  group("Pi", () {
    test("emits [3,3.1,3.14,3.141,3.1415]", () {
      expect(calculator.pi(), emitsInOrder([3, 3.1, 3.14, 3.141, 3.1415]));
    });
  });
}
