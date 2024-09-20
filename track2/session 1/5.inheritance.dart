// Define the parent class Vehicle
abstract class Vehicle {
  String brand;
  int year;

  Vehicle(this.brand, this.year);

  void honk() {
    print('Beep beep!');
  }

  void run();

  void displayInfo() {
    print('Brand: $brand, Year: $year');
  }
}

// Define the subclass Car
class Car extends Vehicle {
  int numDoors;
  Car(super.brand, super.year, this.numDoors);
  
  @override
  void run() {
    print('running car');
  }

  

  @override
  void displayInfo() {
    super.displayInfo();
    print('Number of doors: $numDoors');
  }
}


// Define the subclass Bicycle
class Bicycle extends Vehicle {
  int numGears;

  Bicycle(String brand, int year, this.numGears) : super(brand, year);

  void run() {
    print('The bicycle is moving.');
  }

  @override
  void displayInfo() {
    super.displayInfo();
    print('Number of gears: $numGears');
  }
}

void main() {
  // Create objects of Car and Bicycle classes
  Car car = Car('Toyota', 2022, 4);
  Bicycle bicycle = Bicycle('Giant', 2021, 21);

  // Accessing methods of Car object
  car.honk();
  car.run();
  car.displayInfo();
  print('***************************');

  // Accessing methods of Bicycle object
  bicycle.honk();
  bicycle.run();
  bicycle.displayInfo();
}
