//Niranj R
//Dart program to build a class that performs password operations .
//It includes functions to validate the strength of a password and generate passwords in three different levels: strong, intermediate, and low.

import 'dart:io';
import 'dart:math';

//Class that manages password operations
class LockKeyManager {
  //Generates a password of given strength and length
  void createPassword(String level, int size) 
  {
    String allowedChars;
    if (level == "low") 
    {
      allowedChars = 'abcdefghijklmnopqrstuvwxyz0123456789';
    } 
    else if (level == "intermediate") 
    {
      allowedChars = 'abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789';
    } 
    else 
    {
      allowedChars = 'abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789\$#@!&*%?';
    }

    Random generator = Random();
    String newPassword = String.fromCharCodes(
      Iterable.generate(size, (_) => allowedChars.codeUnitAt(generator.nextInt(allowedChars.length)))
    );
    print("Generated Password:");
    print(newPassword);
  }

  //Validates password strength
  void checkStrength(String userPassword) 
  {
    double ev = pwdstrength(userPassword);
    print("Password Strength Evaluation:");
    if (ev < 45) 
    {
      print("Result: LOW");
    } 
    else if (ev < 105) 
    {
      print("Result: INTERMEDIATE");
    }
    else 
    {
      print("Result: STRONG");
    }
  }
}

void main() {
  print("Welcome to Lock & Key");
  LockKeyManager tool = LockKeyManager();
  int pwdLength = 10;
  while (true) 
  {
    print("\n");
    print("======== MENU ========");
    print("1. Generate Strong Password");
    print("2. Generate Intermediate Password");
    print("3. Generate Low Strength Password");
    print("4. Validate a Password");
    print("5. Exit");
    print("======================");
    stdout.write("Choose an option (1-5): ");
    int selectedOption = fetchValidInteger();
    if (selectedOption == 1 || selectedOption == 2 || selectedOption == 3) 
    {
      stdout.write("Enter the desired password length: ");
      pwdLength = fetchValidInteger();
    }

    if (selectedOption == 1) 
    {
      print("\nGenerating a strong password...");
      tool.createPassword("strong", pwdLength);
    } 
    else if (selectedOption == 2) 
    {
      print("\nGenerating an intermediate password...");
      tool.createPassword("intermediate", pwdLength);
    } 
    else if (selectedOption == 3) 
    {
      print("\nGenerating a low strength password...");
      tool.createPassword("low", pwdLength);
    } 
    else if (selectedOption == 4) 
    {
      stdout.write("Enter the password to validate: ");
      String enteredPwd = stdin.readLineSync()!;
      tool.checkStrength(enteredPwd);
    } 
    else if (selectedOption == 5) 
    {
      print("Thank you for using Lock & Key!");
      print("Exiting the application...");
      return;
    } 
    else 
    {
      print("❗ Invalid choice. Please select a number between 1 and 5.");
    }
  }
}

//Validates and returns a not null integer from user
int fetchValidInteger() {
  while (true) {
    String? entry = stdin.readLineSync();
    if (entry != null && entry.isNotEmpty) 
    {
      int? value = int.tryParse(entry);
      if (value == null) 
      {
        if (double.tryParse(entry) != null) 
        {
          stdout.write("Please enter a whole number, not a decimal: ");
        } 
        else 
        {
          stdout.write("Not a valid number. Please enter again: ");
        }
      } 
      else 
      
      {
        return value;
      }
    } 
    else 
    {
      stdout.write("Input can't be empty. Please enter an integer: ");
    }
  }
}

//Returns base-2 logarithm
double logBase2(num number) => log(number) / log(2);

//Computes the character length of the password
int pwdsize(String pwd) 
{
  bool hasLowercase = pwd.contains(RegExp(r'[a-z]'));
  bool hasUppercase = pwd.contains(RegExp(r'[A-Z]'));
  bool hasDigits = pwd.contains(RegExp(r'[0-9]'));
  bool hasSymbols = pwd.contains(RegExp(r'[!@#\$%^&*(),.?":{}|<>]'));
  int ts = 0;
  if (hasLowercase) ts += 26;
  if (hasUppercase) ts += 26;
  if (hasDigits) ts += 10;
  if (hasSymbols) ts += 32;
  return ts;
}
//Calculates the password
double pwdstrength(String pwd) 
{
  int pwdLength = pwd.length;
  int charsetUsed = pwdsize(pwd);
  return pwdLength * logBase2(charsetUsed);
}
