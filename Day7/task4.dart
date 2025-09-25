/*🔹 Task 4: Transport System

Vehicle class → method start().

Car class → inherit kare aur property seats.

Bus class → inherit kare aur property capacity.

Truck class → inherit kare aur property loadLimit.
main() me teenon ka object banao aur alag-alag details show karo.*/

class Vehicle {
  void start(String type) {
    print("$type start");
  }
}

class Car extends Vehicle {
  int seats;
  Car(this.seats);
  void seatsInfo() {
    print("Car Seats:$seats\n");
  }
}

class Bus extends Vehicle {
  int capacity;
  Bus(this.capacity);
  void capacityInfo() {
    print("Bus capacity:$capacity passengers\n");
  }
}

class Truck extends Vehicle {
  int loadLimit;
  Truck(this.loadLimit);
  void loadLimitInfo() {
    print("Truck Load Limit:$loadLimit tons");
  }
}

void main() {
  Car car = Car(5);
  car.start("Car");
  car.seatsInfo();

  Bus bus = Bus(40);
  bus.start("Bus");
  bus.capacityInfo();

  Truck truck = Truck(400);
  truck.start("Truck");
  truck.loadLimitInfo();
}
