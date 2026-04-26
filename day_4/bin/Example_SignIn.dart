import 'dart:io';

void main() {
  List users = [
    {"UserName": "Saja", "password": "123"},
    {"UserName": "Sanad", "password": "123sanad"},
    {"UserName": "Mohammad amin", "password": "1122001100"}
  ];

  stdout.write("Enter Username: ");
  String username = stdin.readLineSync()!;

  stdout.write("Enter Password: ");
  String password = stdin.readLineSync()!;

  bool found = false;

  for (var user in users) {
    if (user["UserName"] == username && user["password"] == password) {
      found = true;
      break;
    }
  }

  if (found) {
    print("Login Successful ✅ Welcome $username");
  } else {
    print("Login Failed ❌ Invalid username or password");
  }
}


//cd "D:\Desktop\Mastering Dart\Mastering-Dart\day_4" 
