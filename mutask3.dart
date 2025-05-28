//Niranj R
// A menu-driven, interactive Dart program that performs basic arithmetic and comparison operations.
// Users can input two numbers and choose an operation (add, subtract, multiply, divide, or compare).
// Results are displayed using string interpolation.
import 'dart:io';

void main() {
  while(true)
  {
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
    print("8. Exit");

    //Reading choice from user
    stdout.write("Enter your choice (1-8): ");
    int choice = int.parse(stdin.readLineSync()!);
    if(choice==8)
    {
      break;
    }

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
  }
  print("Exiting calculartor!");
}

