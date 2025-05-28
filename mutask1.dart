import 'dart:io';

void main() {
  print("Enter your Name:");
  String? name = stdin.readLineSync();

  print("Enter your Phone Number:");
  String? phone = stdin.readLineSync();

  print("Enter your Age:");
  String? age = stdin.readLineSync();

  print("Enter your Height (in cm):");
  String? height = stdin.readLineSync();

  print("Enter your Weight (in kg):");
  String? weight = stdin.readLineSync();

  print("Enter your Address:");
  String? address = stdin.readLineSync();

  print("Enter your Hobbies (comma separated):");
  String? hobbies = stdin.readLineSync();

  print("\n========== YOUR BIODATA ==========\n");
  print("Name     : $name");
  print("Phone    : $phone");
  print("Age      : $age");
  print("Height   : $height cm");
  print("Weight   : $weight kg");
  print("Address  : $address");
  print("Hobbies  : $hobbies");
  print("\n==================================");
}
