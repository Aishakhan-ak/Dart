/*🔹 Task 5: Hospital Management System (Challenge)
Person class → name, age.
Doctor class → inherit kare, property: specialization.
Patient class → inherAgeit kare, property: disease.
Staff class → inherit kare, property: role.
main() me alag-alag objects banao aur unki info print karo.*/

class Person {
  String name;
  int age;
  Person(this.name, this.age);
  void showPersoninfo() {
    print("Name:$name,Age:$age");
  }
}

class Doctor extends Person {
  String specialization;
  Doctor(String name, int age, this.specialization) : super(name, age);
  void showDoctorinfo() {
    showPersoninfo();
    print("Doctor Specialization:$specialization");
  }
}

class Patient extends Person {
  String disease;
  Patient(String name, int age, this.disease) : super(name, age);
  void showPatientinfo() {
    showPersoninfo();
    print("Patient Disease:$disease");
  }
}

class Staff extends Person {
  String role;
  Staff(String name, int age, this.role) : super(name, age);
  void showStaffinfo() {
    showPersoninfo();
    print("Staff Role:$role");
  }
}

void main() {
  Doctor doctor = Doctor("Aisha", 21, "Cardiology");
  doctor.showDoctorinfo();

  Patient patient = Patient("Aila", 34, "Heart attack");
  patient.showPatientinfo();

  Staff staff = Staff("Hamza", 54, "Clerk");
  staff.showStaffinfo();
}
