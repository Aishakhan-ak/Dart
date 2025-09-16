/*Task 3:employee Salary Slip Generator 
Input employee name, basic salary.
Calculate:
HRA = 20% of salary
TA = 10% of salary
Tax = 5% of salary
Show total salary after all additions & tax deduction.*/

void basicsSalary(String name, double salary) {
  double hra = salary * 0.20;
  double ta = salary * 0.10;
  double tax = salary * 0.05;
  double total = salary + hra + ta - tax;
  print("The employee name is $name and salary is $total");
}

void main() {
  String employee = "Aisha";
  double employeeSalary = 50000;
  basicsSalary(employee, employeeSalary);
}
