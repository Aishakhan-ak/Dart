/*Task 2: Number Analyzer 
User enters any number.
Program checks:
Is it even or odd?
Is it positive, negative, or zero?
Is it prime or not?
Show all results together.*/

void numberAnalyzer(int n) {
  // check number is even or odd
  if (n % 2 == 0) {
    print("The number $n is Even");
  } else {
    print("The number $n is odd");
  }

  // check number is positive or odd
  if (n > 0) {
    print("The number $n is positive");
  } else if (n < 0) {
    print("The number $n is negative");
  } else {
    print("The number is zero");
  }

  // check number is prime or not
  bool isPrime = true;
  if (n <= 1) {
    isPrime = false;
  }
  for (int i = 2; i * i <= n; i++) {
    if (n % i == 0) {
      isPrime = false;
      break;
    }
  }
  if (isPrime == true) {
    print("The number $n is prime");
  } else {
    print("The number $n is non prime");
  }
}

void main() {
  int num = 7;
  print("Enter a number:$num");
  numberAnalyzer(num);
}
