class Car {
  double fuel;
  int speed;
  String name;
  late String model;
  static String companyName = "Honda";

  Car.WithoutModel(this.fuel, this.speed, this.name);
  Car(this.fuel, this.speed, this.name, this.model);

  double checkRemainingFuel() {
    return fuel;
  }

  int checkSpeed() {
    return speed;
  }

  void addFuel(double addedFuel) {
    fuel += addedFuel;
  }

  void showAllStats() {
    print("The car name is : $name");
    print("The car model year is : $model");
    print("The car speed is : $speed");
    print("The car fuel is : $fuel");
  }
}

void main() {
  Car c1 = Car(32.3, 4, "Civic", "2026");
  Car c2 = Car(56, 70, "BMW", "2024");
  c1.showAllStats();

  c2.addFuel(3.3);
  print(c2.fuel);

  if (c1.speed > c2.speed) {
    print("C1 SPEED IS :${c1.speed}");
  } else {
    print("C2 SPEED IS:${c2.speed}");
  }
}
