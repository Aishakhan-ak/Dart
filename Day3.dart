void main() {
  // Task 1
  /// Print the table of 8 using 'for' loop
  for (int i = 1; i <= 10; i++) {
    print("8 x $i = ${8 * i}");
  }

  // Task 2
  /// Print the sum of numbers from 1 to 100 using 'for' loop
  int sum = 0;
  for (int j = 1; j <= 100; j++) {
    sum += j;
  }
  print("Sum of numbers from 1 to 100: ${sum}");

  // Task 3
  ///A shop sells 5 products.Enter price of each and calculate total bill using 'for' loop
  List<int> prices = [500, 1500, 250, 300, 800];
  int total = 0;
  for (int price in prices) {
    total += price;
  }
  print("Total Bill of 5 products: ${total}");

  // Task 4
  ///Password System → Keep asking password until correct entered.
  String password = "abs";
  String correctPass = "admin";
  while (true) {
    if (!(password == correctPass)) {
      print("Invalid Password. Try again!");
      break;
    } else if (password == correctPass) {
      print("You enterd correct password");
    }
  }

  // Task 5
  /// Library Fine System → If book is returned late:
  /* 1–5 days = Rs. 10/day
 6–10 days = Rs. 20/day
 More than 10 days = Rs. 50/day */
  List<int> fine = [10, 20, 50];
  int day = 0;
  bool check = true;
  while (check) {
    if (day == 0) {
      print("You Returned book on time");
      check = false;
    } else if (day <= 5) {
      print("You Returned book after $day days,so you pay charges ${fine[0]}");
      check = false;
    } else if (day > 5 && day <= 10) {
      print("You Returned book after $day days,so you pay charges ${fine[1]}");
    } else if (day > 10) {
      print(
        "You Returned book after more than 10 days,so you pay charges ${fine[2]}",
      );
      check = false;
    }
  }
}
