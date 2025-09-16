/*Task 4: Smart Parking System 
Parking lot has 50 slots.
Ask user how many cars are entering.
If slots available → allow entry, update remaining slots.
If not → show "Parking Full".
Keep running in a loop until user exits. */

void checkAvailability(int remainingSlots) {
  //The slots are available or not
  if (remainingSlots == 50) {
    print("Parking is empty.$remainingSlots slots are available");
  } else if (remainingSlots <= 0) {
    print("Parking is full.0 slots are available");
  } else if (remainingSlots < 50) {
    print("Parking available: $remainingSlots slot(s) left");
  }
}

void parkCar(int enteredCars, int remainingSlots) {
  // Enter the cars or not

  if (enteredCars > remainingSlots) {
    print("Parking is full, you can't park cars");
  } else if (enteredCars <= remainingSlots) {
    print("You parked $enteredCars car(s) successfully");
  }
}

void showSlots(int remainingSlots) {
  // how many slots are remaining
  print("Remaining slots are:$remainingSlots");
}

void exitSystem() {
  // exit the slot when user enter 0 or remaining Slots are 0
  print("The program will exit");
}

void main() {
  int slots = 50;
  int remainingSlots = slots;
  List<int> enterCars = [25, 10, 0];

  for (int enteredCars in enterCars) {
    print("Enter cars:$enteredCars");

    if (enteredCars == 0) {
      exitSystem();
      break;
    }

    parkCar(enteredCars, remainingSlots);
    if (enteredCars <= remainingSlots) {
      remainingSlots = remainingSlots - enteredCars;
    }
    checkAvailability(remainingSlots);
    showSlots(remainingSlots);
    if (remainingSlots == 0) {
      exitSystem();
      break;
    }
  }
}
