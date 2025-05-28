import 'dart:io';

void main() {
  print("Welcome to Sumplier!");
  //Reading user input 
  print("Enter a number to see its multiplication table:");
  int n = int.parse(stdin.readLineSync()!);
  //variable sum is being used to store the sum of the first 10 multiples
  int sum = 0; 
  print("\nMultiplication Table of $n:");
  for (int i = 1; i <= 10; i++) {
    int p = n * i;
    //Displaying each product
    print("$n x $i = $p");
    // Adding each product to the sum
    sum += p; 
  }
  //Displaying the sum
  print("\nThe sum of the first 10 multiples of $n is: $sum");
}
