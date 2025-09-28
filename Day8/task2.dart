/*Task 2: Abstract + Polymorphism + Override (Ride Hailing App )

Classes & Features:

Vehicle (Abstract Class)

Properties: distance, baseFare

Method: rideFare() (abstract)

Car (Child)

Properties: distance, baseFare, acAvailable

Method: rideFare() → override with AC charges

Bike (Child)

Properties: distance, baseFare, helmetProvided

Method: rideFare() → override with discount if helmet given

Rickshaw (Child)

Properties: distance, baseFare, seatingCapacity

Method: rideFare() → override with seating fare

Abstract + Override: har child apna alag ride fare calculation karega.*/

// Abstract parent class
abstract class Vehicle {
  int distance;
  double baseFare; // Cost per km
  Vehicle(this.distance, this.baseFare);

  double rideFare(); // Abstract method (must be written in child classes)
}

// Car class
class Car extends Vehicle {
  bool acAvailable;
  Car(int distance, double baseFare, this.acAvailable)
    : super(distance, baseFare);

  @override
  double rideFare() {
    // Car fare with AC extra
    return distance * baseFare + (acAvailable ? 100 : 0);
  }
}

// Bike class
class Bike extends Vehicle {
  bool helmetProvided;
  Bike(int distance, double baseFare, this.helmetProvided)
    : super(distance, baseFare);

  @override
  double rideFare() {
    // Bike fare with helmet extra
    return distance * baseFare + (helmetProvided ? 30 : 0);
  }
}

// Rickshaw class
class Rickshaw extends Vehicle {
  int seatingCapacity;
  Rickshaw(int distance, double baseFare, this.seatingCapacity)
    : super(distance, baseFare);

  @override
  double rideFare() {
    // Rickshaw fare with seats extra
    return distance * baseFare + seatingCapacity * 10;
  }
}

void main() {
  // Parent type but child objects
  Vehicle v1 = Car(4, 50, false);
  Vehicle v2 = Bike(2, 20, true);
  Vehicle v3 = Rickshaw(2, 30, 5);

  // Polymorphism → same method, different results
  print("CarFare:${v1.rideFare()}");
  print("BikeFare:${v2.rideFare()}");
  print("RikshawFare:${v3.rideFare()}");
}
