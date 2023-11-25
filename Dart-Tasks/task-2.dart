import 'dart:io';

void main() {
  print("how many element does have the array?");
  int numberOfArray = int.parse(stdin.readLineSync()!);
  List<int> array = [];
  for (var i = 0; i < numberOfArray; i++) {
    stdout.write("array[$i] = ");
    array.add(int.parse(stdin.readLineSync()!));
  }
  print("Maximum = ${findMaximum(array)}");
  print("Minimum = ${findMinimum(array)}");
  print("Sum = ${calculateSum(array)}");
  print("Average = ${calculateAverage(array)}");
}

int findMaximum(List<int> number) {
  int max = number[0];
  number.forEach((element) {
    max = max > element ? max : element;
  });
  return max;
}
int findMinimum(List<int> number) {
  int min = number[0];
  number.forEach((element) {
    min = min < element ? min : element;
  });
  return min;
}
int calculateSum(List<int> number) {
  int sum = 0;
  number.forEach((element) {
    sum += element;
  });
  return sum;
}
double calculateAverage(List<int> number) {
  return calculateSum(number)/number.length;
}
