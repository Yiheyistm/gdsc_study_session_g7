import 'dart:io';

class Calculator {
  int addition(int n1, int n2) {
    return n1 + n2;
  }

  int subtraction(int n1, int n2) {
    return n1 - n2;
  }

  int multiplication(int n1, int n2) {
    return n1 * n2;
  }

  double? division(int n1, int n2) {
    try {
      if (n2 == 0) throw Exception("Divisor can't be zero");
      return n1 / n2;
    } catch (e) {
      print(e);
      return null;
    }
  }
}

void main() async {
  Calculator calculator = new Calculator();
  late int number1;
  late int number2;
  stdout.write("Enter Number 1:");
  number1 = int.parse(stdin.readLineSync()!);
  stdout.write("Enter Number 2:");
  number2 = int.parse(stdin.readLineSync()!);
  print("Please Wait ....");
  Future.delayed(Duration(seconds: 5), () {
    print("Addition = ${calculator.addition(number1, number2)}");
    print("Subtraction = ${calculator.subtraction(number1, number2)}");
    print("Multiplication = ${calculator.multiplication(number1, number2)}");
    print("Division = ${calculator.division(number1, number2)}");
  });
}
