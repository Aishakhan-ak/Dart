void main() {
  // Task 1 in nested if-else
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

  /// Task 1 in Ternary operator
  String result = (marks >= 60)
      ? (age >= 19)
            ? "Eligible for Admission"
            : "Age is less"
      : "Not Eligible for admission";
  print(result);

  // Task 2 in nested if-else
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
  totalAmount = discount - amount;
  print(totalAmount);

  // Task 2 in ternary operator
  double discountPerc = (amount >= 5000)
      ? 20
      : (amount >= 3000)
      ? 10
      : (amount >= 1000)
      ? 5
      : 0;
  double dis = amount * discountPerc / 100.0;
  double finalAmount = dis - amount;
  print(finalAmount);

  // Task 3
  /// Bank Loan Eligibility in nested if-else

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

  /// Task 3 in ternary operator
  String bankLoan = (salary >= 40000)
      ? (jobExpe >= 2)
            ? "Eligible for bank loan"
            : "Job experience is less than 2 years"
      : "Not eligible for bank loan";
  print(bankLoan);
}
