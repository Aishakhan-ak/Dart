void main() {
  // Task 1 using nested if-else
  ///University admission check
  int marks = 87;
  int age = 21;
  if (marks >= 60) {
    if (age >= 19) {
      print("Eligible for admission");
    } else {
      print("Your age is not eligible");
    }
  } else {
    print("Not eligible for admission");
  }

  /// Task 1 using Ternary operator
  int marks2 = 60;
  int age2 = 15;
  String result = (marks2 >= 60)
      ? (age2 >= 19)
            ? "Eligible for Admission"
            : "Not eligible for admission bcz you are under age"
      : "Not Eligible for admission";
  print(result);

  // Task 2 using if else-if
  /// Online Shopping
  int amount = 8000;
  double discountPercentage = 0;
  double totalAmount;
  if (amount >= 5000)
    discountPercentage = 20;
  else if (amount >= 3000)
    discountPercentage = 10;
  else if (amount >= 1000)
    discountPercentage = 5;

  double discount = amount * discountPercentage / 100;
  totalAmount = amount - discount;
  print(totalAmount);

  // Task 2 using ternary operator
  int amount2 = 3000;
  double discountPerc = (amount2 >= 5000)
      ? 20
      : (amount2 >= 3000)
      ? 10
      : (amount2 >= 1000)
      ? 5
      : 0;
  double dis = amount2 * discountPerc / 100.0;
  double finalAmount = amount2 - dis;
  print(finalAmount);

  // Task 3
  /// Bank Loan Eligibility using nested if-else

  int salary = 55000;
  int jobExpe = 3;
  if (salary >= 40000) {
    if (jobExpe >= 2) {
      print("Eligible for bank loan");
    } else {
      print("Job experience is less than 2 years");
    }
  } else {
    print("Not eligible for bank loan");
  }

  /// Task 3 using ternary operator
  int salary2 = 50000;
  int jobExpe2 = 1;
  String bankLoan = (salary2 >= 40000)
      ? (jobExpe2 >= 2)
            ? "Eligible for bank loan"
            : "Not eligible for bank loan bcz you'r job experience is less than 2 years"
      : "Not eligible for bank loan";
  print(bankLoan);
}
