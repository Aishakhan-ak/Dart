void main() {
  //   Task 1
  /// Intro
  int age = 20;
  String name = "aisha";
  double gpa = 4.00;
  print("My name is ${name},my age is ${age} and my gpa is ${gpa}");

  /// variable
  var salary = 40000;
  salary = 5000;
  print("My salary is ${salary + 3000}");

  /// dynamic
  dynamic course = "Dart";
  course = "App Development ";
  print("My enrolled course is ${course + "Batch 1"}");

  //   Task 2
  /// Calculator using arithmetic operator

  int a = 86;
  int b = 25;
  print("Sum of two numbers a and b is: ${a + b}");
  print("Subtract of two numbers a and b is: ${a - b}");
  print("Multiply of two numbers a and b is: ${a * b}");
  print("Divide of two numbers a and b is: ${a / b}");
  print("Modulus of two numbers a and b is: ${a % b}");

  //   Task 3
  /// GradinG System using comparison operator
  int marks = 78;
  print("${marks >= 80} Grade A");
  print("${marks >= 70} Grade B");
  print("${marks >= 60} Grade C");
  print("${marks >= 50} Grade D");

  // Task 4
  /// Voting System using logical operator
  int age2 = 53;
  bool cnic = true;
  print(age2 >= 19 && cnic);
  print(!(age2 < 19));
}
