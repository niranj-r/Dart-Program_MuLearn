// Function takes a list of integers and a function that operates on each integer.
// It applies the function to each element and prints the result
void processList(List<int> numbers, int Function(int) operation) {
  for (int number in numbers) {
    int result = operation(number);
    print("Input: $number → Output: $result");
  }
}

void main() {
  // Sample List
  List<int> list = [1, 2, 3, 4, 5];

  print("Doubling each number in list:");
  processList(list, (int number) => number * 2);

  print("\nSquaring each number in list:");
  processList(list, (int number) => number * number);

  print("\nSubtracting 5 from each number in list:");
  processList(list, (int number) => number - 5);

  print("\nGetting remainder when each number in list is divided by 3:");
  processList(list, (int number) => number % 3);
}