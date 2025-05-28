import 'dart:io';

void main() {
  print("Enter the first number:");
  String? input1 = stdin.readLineSync();
  int number1 = int.parse(input1!);
  print("Enter the second number:");
  String? input2 = stdin.readLineSync();
  int number2 = int.parse(input2!);
  int sum = number1 + number2;
  print("The sum of $number1 and $number2 is $sum");
}
