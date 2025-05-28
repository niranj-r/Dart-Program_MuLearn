//Niranj R
//This Dart program is a simple car buying and selling platform.
//It uses two classes, Car and Person, to simulate buying, selling, and managing cars.
//Users can buy cars if they have enough money, sell owned cars, view their car collection, update car prices in the inventory, and list available cars.


import 'dart:io';

//Represents a car with it's name and price
class Car 
{
  String name;
  double price;
  Car(this.name, this.price);
  //Changes the price of the car
  void changePrice(double newPrice) 
  {
    price = newPrice;
  }
}

//Represents a person who can buy and sell cars
class Person 
{
  String name;
  List<Car> ownedCars;
  double moneyLeft;
  Person(this.name, this.ownedCars, this.moneyLeft);
  //Allows the person to buy a car if they have enough money
  void buyCar(Car car) 
  {
    if (moneyLeft >= car.price) 
    {
      ownedCars.add(car);
      moneyLeft -= car.price;
      print("\nYou bought ${car.name}.");
      viewOwnedCars();
      print("Money left: \$${moneyLeft.toStringAsFixed(2)}");
    } 
    else 
    {
      print("\nNot enough money to buy ${car.name}.");
    }
  }
  //Allows the person to sell a car that they own
  void sellCar(Car car) 
  {
    if (ownedCars.contains(car)) 
    {
      ownedCars.remove(car);
      moneyLeft += car.price;
      print("\nYou sold ${car.name}.");
      viewOwnedCars();
      print("Money now: \$${moneyLeft.toStringAsFixed(2)}");
    } 
    else 
    {
      print("\nYou don't own ${car.name}.");
    }
  }
  //Shows all cars currently owned by the person
  void viewOwnedCars() 
  {
    if (ownedCars.isEmpty) 
    {
      print("You don't own any cars.");
    } 
    else 
    {
      print("Your Cars:");
      for (int i = 0; i < ownedCars.length; i++) 
      {
        print("${i + 1}. ${ownedCars[i].name} - \$${ownedCars[i].price}");
      }
    }
  }
}

void main() 
{
  print("Welcome to NJAI\nOne place for Car Buying & Selling");

  // Create car list
  List<Car> carList = [
    Car("Bugatti Veyron", 35000),
    Car("Rollce Royce Phantom", 28000),
    Car("Lamborghini Hurracan", 26000),
    Car("Ferrari F80", 30000)
  ];

  // Input for user details
  stdout.write("Enter your name: ");
  String userName = stdin.readLineSync() ?? "User";

  stdout.write("Enter your bank balance: ");
  double bank = double.parse(stdin.readLineSync() ?? "0");

  // Create the person
  Person user = Person(userName, [], bank);

  // Menu loop
  while (true) 
  {
    print("\n1. Buy Car");
    print("2. Sell Car");
    print("3. View Owned Cars");
    print("4. Update Car Price");
    print("5. Show Available Cars");
    print("6. Exit");
    stdout.write("Choose an option: ");
    int choice = int.parse(stdin.readLineSync() ?? "0");

    if (choice == 1) 
    {
      print("\nAvailable Cars:");
      for (int i = 0; i < carList.length; i++)
      {
        print("${i + 1}. ${carList[i].name} - \$${carList[i].price}");
      }
      stdout.write("Enter car number to buy: ");
      int index = int.parse(stdin.readLineSync() ?? "0") - 1;

      if (index >= 0 && index < carList.length) 
      {
        user.buyCar(carList[index]);
      } 
      else 
      {
        print("Invalid car number.");
      }
    } 
    else if (choice == 2) 
    {
      if (user.ownedCars.isEmpty) 
      {
        print("You don't own any cars to sell.");
      } 
      else 
      {
        user.viewOwnedCars();
        stdout.write("Enter car number to sell: ");
        int index = int.parse(stdin.readLineSync() ?? "0") - 1;
        if (index >= 0 && index < user.ownedCars.length) 
        {
          user.sellCar(user.ownedCars[index]);
        } 
        else 
        {
          print("Invalid car number.");
        }
      }
    } 
    else if (choice == 3) 
    {
      user.viewOwnedCars();
    } 
    else if (choice == 4) 
    {
      print("\nCars in Inventory:");
      for (int i = 0; i < carList.length; i++) 
      {
        print("${i + 1}. ${carList[i].name} - \$${carList[i].price}");
      }
      stdout.write("Enter car number to change price: ");
      int index = int.parse(stdin.readLineSync() ?? "0") - 1;
      if (index >= 0 && index < carList.length) 
      {
        stdout.write("Enter new price: ");
        double newPrice = double.parse(stdin.readLineSync() ?? "0");
        carList[index].changePrice(newPrice);
        print("${carList[index].name} price updated to \$${newPrice}");
      } 
      else 
      {
        print("Invalid car number.");
      }
    } 
    else if (choice == 5) 
    {
      print("\nAvailable Cars:");
      for (int i = 0; i < carList.length; i++) 
      {
        print("${i + 1}. ${carList[i].name} - \$${carList[i].price}");
      }
    } 
    else if (choice == 6) 
    {
      print("Thank you for using the app!");
      break;
    } 
    else 
    {
      print("Please choose a valid option.");
    }
  }
}
