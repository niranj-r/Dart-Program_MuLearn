import 'dart:io';

void main() {

  //Menu for Calculator
  print("Welcome to Basic Calculator!");
  print("Select an operation:");
  print("1. Addition (+)");
  print("2. Subtraction (-)");
  print("3. Multiplication (*)");
  print("4. Division (/)");
  print("5. Greater Than (>)");
  print("6. Less Than (<)");
  print("7. Equals To (==)");

  //Reading choice from user
  stdout.write("Enter your choice (1-7): ");
  int choice = int.parse(stdin.readLineSync()!);

  //Reading inputs from user
  stdout.write("Enter the first number: ");
  double num1 = double.parse(stdin.readLineSync()!);

  stdout.write("Enter the second number: ");
  double num2 = double.parse(stdin.readLineSync()!);

  //Performing operations based on user's choice
  if(choice==1)
  {
      print("Result: $num1 + $num2 = ${num1 + num2}");
  }
  else if(choice==2)
  {
      print("Result: $num1 - $num2 = ${num1 - num2}");
  }
  else if(choice==3)
  {
      print("Result: $num1 * $num2 = ${num1 * num2}");

  }
  else if(choice==4)
  {
    if (num2 != 0) 
    {
      print("Result: $num1 / $num2 = ${num1 / num2}");
    } else 
    {
      print("Error: Division by zero is not allowed.");
    }
  }
  else if(choice==5)
  {
    print("Comparison: $num1 > $num2 = ${num1 > num2}");
  }
  else if(choice==6)
  {
    print("Comparison: $num1 < $num2 = ${num1 < num2}");
  }
  else if(choice==7)
  {
    print("Comparison: $num1 == $num2 = ${num1 == num2}");
  }
  //Handling invalid choice
  else {
    print("Invalid choice. Please select a valid number.");
  }

  print("Exiting calculartor!");
}

