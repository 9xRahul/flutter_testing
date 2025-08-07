class Calculator {
  double add(double a, double b) => a + b;
  double subtract(double a, double b) => a - b;
  double divide(double a, double b) {
    if (b == 0) throw ArgumentError("canot divide by zero");

    return a / b;
  }

  double multiply(double a, double b) => a * b;

  Future<double> powerOfTwo(double a) {
    return Future.delayed(Duration(seconds: 1), () => a * a);
  }
}
