/*📝 Task: Food Delivery Bill Calculator
Problem Statement:
Ek customer Food Delivery App (Foodpanda type) se khana order karta hai. Tumhe ek Dart program likhna hai jo:

1. Order Amount input lega.
2. Discount apply karega:
Rs. 2000 ya zyada → 20% discount
Rs. 1000 ya zyada → 10% discount
Warna → no discount

3. Delivery Charges calculate karega:
Rs. 1500 ya zyada → Free delivery
Warna Rs. 200 fixed charges

4. Final Bill calculate karke print karega.

Expected Output Example:
Enter order amount: 1800
Order Amount: Rs.1800
Discounted Amount: Rs.1620
Delivery Charges: Rs.200
Final Bill: Rs.1820*/

import 'dart:io';

// This function apply discount on order amount
double applyDiscount(double orderAmount) {
  double discountPercentage = 0;
  if (orderAmount >= 2000) {
    discountPercentage = 20;
  } else if (orderAmount >= 1000) {
    discountPercentage = 10;
  } else {
    print("No discount");
    return orderAmount;
  }
  double discount = orderAmount * discountPercentage / 100.0;
  double discountAmount = orderAmount - discount;
  print("Discounted Amount:Rs. $discountAmount");
  return discountAmount;
}

// This function apply delivery charges after discount
double deliveryCharges(double discountAmount) {
  if (discountAmount >= 1500) {
    print("Delivery charges:Rs.0(Free delivery)");
    return discountAmount;
  } else {
    print("Delivery charges:Rs.200");
    return discountAmount + 200;
  }
}

// This function display final bill after discount and delivery charges
void calculateFinalBill(double afterDelivery) {
  print("Final Bill:Rs. $afterDelivery");
}

void main() {
  double orderAmount = 0.0;

  // Get the order amount from users
  stdout.write("Enter Order Amount:Rs. ");
  String? input = stdin.readLineSync();
  orderAmount = double.tryParse(input ?? "0") ?? 0;

  print("Order Amount:Rs. $orderAmount");

  if (orderAmount <= 0) {
    print("You didn't order anything");
  } else {
    double discountAmount = applyDiscount(orderAmount);
    double afterDelivery = deliveryCharges(discountAmount);
    calculateFinalBill(afterDelivery);
  }
}
