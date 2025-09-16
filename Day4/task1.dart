/*Task 1: Online Shopping Discount System 
User enters price of items (loop until they stop).
If total > 5000 → apply 20% discount.
If total between 2000–5000 → apply 10% discount.
Otherwise → no discount.
Show final bill */

void discount(int total) {
  // discount
  double discountPerecentage = 0;
  if (total == 0) {
    print("You buy no item");
  } else if (total > 5000) {
    discountPerecentage = 20;
  } else if (total > 2000 && total <= 5000) {
    discountPerecentage = 10;
  } else {
    print("No discount");
  }
  double discount = total * discountPerecentage / 100;
  double finalAmount = total - discount;
  print("Your bill is: $finalAmount");
}

void main() {
  int total = 0;
  // prices of items
  List<int> prices = [4000, 300, 2000, 0];
  for (int price in prices) {
    if (price == 0) {
      print("Exit");
      break;
    }
    total += price;
  }
  discount(total);
}
