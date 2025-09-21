/*Task: Create a SignUpSystem class in Dart to handle user registration.

Requirements:

Class name: SignUpSystem

Attributes: username, password, email

Methods:

getValidUsername() → validate username (not empty, no spaces, no special characters, min 3 chars)

getValidPassword() → validate password (≥6 chars, no spaces, must include uppercase, lowercase, digit, and special character)

getValidEmail() → validate email (must contain @ and ., no spaces, cannot start with @)

signUp() → take valid inputs from user

displayUser() → display details (hide password)

menu() → switch-case menu with options:

Sign Up

Display User

Exit

Main Function:

Create an object of SignUpSystem and call menu().*/

import 'dart:io';

class SignUpSystem {
  String username = "";
  String password = "";
  String email = "";

  // Username Validation Function
  String getValidUsername() {
    while (true) {
      // Take username input from user
      stdout.write("Enter the username:");
      String? inputUsername = stdin.readLineSync();
      username = inputUsername ?? "";

      if (username.isEmpty ||
          username.contains(" ") ||
          username.contains(RegExp(r'[@#\$%^&*(),.?":{}|<>]')) ||
          username.length < 3) {
        print(
          "Invalid username, username cannot be empty, spaces not allowed, must be at least 3 characters, no special characters allowed",
        );
      } else {
        print("Valid username:$username");
        return username;
      }
    }
  }

  // Password Validation function
  String getValidPassword() {
    while (true) {
      // Take password input from user
      stdout.write("Enter the password:");
      String? inputPassword = stdin.readLineSync();
      password = inputPassword ?? "";

      if (password.isEmpty ||
          password.contains(" ") ||
          !password.contains(RegExp(r'[A-Z]')) ||
          !password.contains(RegExp(r'[a-z]')) ||
          !password.contains(RegExp(r'[0-9]')) ||
          password.length < 6 ||
          !password.contains(RegExp(r'[!@#\$%^&*(),.?":{}|<>]'))) {
        print(
          "Invalid password, must be at least 6 characters, no spaces allowed, must include uppercase, lowercase, digit, and special character",
        );
      } else {
        print("Valid password: ********");
        return password;
      }
    }
  }

  // Email Validation function
  String getValidEmail() {
    while (true) {
      // Take email input from user
      stdout.write("Enter the email:");
      String? inputEmail = stdin.readLineSync();
      email = inputEmail ?? " ";

      if (email.isEmpty ||
          !email.contains("@") ||
          email.contains(" ") ||
          !email.contains(".") ||
          email.startsWith("@")) {
        print(
          "Invalid email, email cannot be empty, must contain @ and ., no spaces allowed, cannot start with @",
        );
      } else {
        print("Valid email: $email");
        return email;
      }
    }
  }

  //Sign Up Method
  void signUp() {
    username = getValidUsername();
    password = getValidPassword();
    email = getValidEmail();
  }

  // Display user
  void displayUser() {
    if (username.isEmpty || password.isEmpty || email.isEmpty) {
      print("No user signUp yet");
    } else {
      print(
        "***Display user details***\nusername:$username\npassword:********\nemail:$email",
      );
    }
  }

  //Menu System
  void menu() {
    while (true) {
      print("***SignUp Menu System***\n1.SignUp\n2.Display user\n3.Exit");
      // Take menu input from user
      stdout.write("Enter a menu:");
      String? choice = stdin.readLineSync();

      switch (choice) {
        case "1":
          signUp();
          break;
        case "2":
          displayUser();
          break;
        case "3":
          print("Exit");
          // exits the whole menu() function
          return;
        default:
          print("Invalid choice");
      }
    }
  }
}

void main() {
  SignUpSystem system = SignUpSystem();
  system.menu();
}
