//Niranj R
//Fusioner - Function and List Manipulation in Dart
//This Dart program defines a reusable function named `processList` that accepts a list of integers and a function as parameters. It applies the given function to each element in the list and prints the result.
//The program demonstrates dynamic data handling using higher-order functions and list operations.
//Multiple examples show how `processList` can be used with different operations like doubling, squaring, subtracting and finding remainder of numbers.


//Function takes a list of integers and a function that operates on each integer.
//It applies the function to each element and prints the result
void processList(List<int> numbers, int Function(int) operation) {
  for (int number in numbers) {
    int result = operation(number);
    print("Input: $number → Output: $result");
  }
}

void main() {
  // Sample List
  List<int> list1 = [10, 20, 30, 40, 50];
  List<int> list2 = [6,7,8,9,10];
  List<int> list3 = [101, 201, 130, 409, 501];
  List<int> list4 = [102, 320, 530, 640, 750];

  print("Doubling each number in list1:");
  processList(list1, (int number) => number * 2);

  print("\nSquaring each number in list2:");
  processList(list2, (int number) => number * number);

  print("\nSubtracting 5 from each number in list3:");
  processList(list3, (int number) => number - 5);

  print("\nRemainder when each number in list4 is divided by 3:");
  processList(list4, (int number) => number % 3);
}