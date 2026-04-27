import 'dart:io';

void main() {

  // 🔹 Display menu
  print("Choose an option:");
  print("1 - View Profile");
  print("2 - Edit Information");
  print("3 - Delete Account");
  print("4 - Logout");

  // 🔹 User input
  stdout.write("Enter your choice: ");
  String? input = stdin.readLineSync();

  // 🔹 Convert input to int
  int choice = int.parse(input!);

  // =========================
  // 🔹 Switch Case
  // =========================
  switch (choice) {

    case 1:
      print("You selected: View Profile");
      break;

    case 2:
      print("You selected: Edit Information");
      break;

    case 3:
      print("You selected: Delete Account");
      break;

    case 4:
      print("You selected: Logout");
      break;

    default:
      print("Invalid choice");
  }

}

// dart run bin/Switch_Case.dart
