/*Student Task: Smart Coffee Shop Ordering System 
Problem Statement

Ek coffee shop hai jahan 3 items milti hain:
Coffee = 200
Tea = 100
Juice = 150
Customer order kar sakta hai multiple items jab tak wo exit nahi karta.
Rules:
If total bill ≥ 500 → apply 10% discount.
Show final bill after discount.
System loop mein chalega (taake multiple customers order kar saken).

Required Concepts
required tasks in this program:

Functions banane hain
showMenu() → menu dikhaye (No Input, No Output).
calculateBill(int choice, int qty) → price calculate kare (Input + Output).
applyDiscount(int total) → discount lagaye (Input but No Output, bas print kare).
If-Else Ladder
Choice ke hisaab se item price decide karna.
Agar galat choice ho to “Invalid Option” print karna.
Loops (do-while or while)
Program repeat ho jab tak user exit na kare.

Expected Flow (Algorithm Style)

Start program.
Call showMenu() function.
User se choice (1,2,3 ya 0 for exit) lo.
If choice == 0 → loop break karo.
Else quantity pucho.
Call calculateBill(choice, qty) → jo return kare usko total bill mein add karo.
Loop continue until user exits.
At the end call applyDiscount(totalBill) → discount rule apply karo aur final bill show karo.
End program.*/

import 'dart:io';

// This function show the meunu
void showMenu() {
  print("Available Menu:\n1.Coffee = 200\n2.Tea = 100\n3.Juice = 150");
}

// This function calculate the bill on base of choice and quantity of items
double calculateBill(int choice, int quantity) {
  if (choice == 1) {
    return quantity * 200.0;
  } else if (choice == 2) {
    return quantity * 100.0;
  } else if (choice == 3) {
    return quantity * 150.0;
  } else {
    return 0.0;
  }
}

// This function apply the discount on total
double applyDiscount(double total) {
  double discountPercentage = 0;
  double discount = 0;

  if (total >= 500) {
    discountPercentage = 10;
  } else {
    print("No discount");
  }

  discount = total * discountPercentage / 100;
  double finalBill = total - discount;
  return finalBill;
}

//This function show the final bill
void endProgram(double finalBill) {
  print("The final bill is: $finalBill");
}

void main() {
  int choice = -1;
  double total = 0;
  showMenu();
  do {
    //show the message to user without newline
    stdout.write("Select the choice or 0 to exit:");

    //read the user input in string
    String? input = stdin.readLineSync();

    // error handling while taken input from user
    choice = int.tryParse(input ?? "-1") ?? -1;

    if (choice == 0) {
      print("Exit");
      break;
    }

    if (choice < 0 || choice > 3) {
      print("Invalid choice,Try again");
      continue;
    }

    // Take quantity input from the user
    stdout.write("Enter quantity: ");

    // Convert user input into number, return null if invalid.
    int? qty = int.tryParse(stdin.readLineSync() ?? "");

    if (qty == null || qty <= 0) {
      print("Invalid quantity,try again");
      continue;
    }
    int quantity = qty;
    total += calculateBill(choice, quantity);
  } while (choice != 0);

  if (total == 0) {
    print("No purchase item");
  } else {
    double finalBill = applyDiscount(total);
    endProgram(finalBill);
  }
}
