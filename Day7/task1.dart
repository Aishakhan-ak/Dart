/*Task 1: University Management System

Person class → properties: name, age.

Teacher class → inherit from Person, property: subject.

Student class → inherit from Person, properties: rollNumber, grade.

main() me ek teacher aur ek student object banao aur unki details print karo.*/

class Person {
  // properties
  String name;
  int age;
  // constructor
  Person(this.name, this.age);
  // method info()
  void info() {
    print("Name:$name, Age:$age");
  }
}

// Inherit from Person class
class Teacher extends Person {
  // extra properties of Teacher class
  String subject;
  // constructor
  Teacher(String name, int age, this.subject) : super(name, age);
  // methor subj()
  void subj() {
    print("Subject name:$subject");
  }
}

// inherit from person class
class Student extends Person {
  // extra properties of Student class
  int rollNumber;
  String grade;
  // constructor
  Student(String name, int age, this.rollNumber, this.grade) : super(name, age);
  // method studentInfo()
  void studentInfo() {
    print("Roll number:$rollNumber and Grade:$grade");
  }
}

void main() {
  //Create Object of Teacher class
  Teacher teach = Teacher("Manahil", 21, "App development");
  //Create Object of Student class
  Student study = Student("Aisha", 23, 42456, "A");

  teach.info();
  teach.subj();

  study.info();
  study.studentInfo();
}
