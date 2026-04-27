import 'dart:io';////👉 “استورد مكتبة الإدخال والإخراج (Input/Output)”
void main() {
  // 🔹 إدخال الاسم (String)
  print("Enter your name:");
  String? name = stdin.readLineSync();

  // 🔹 إدخال العمر (Integer)
  print("Enter your age:");
  int age = int.parse(stdin.readLineSync()!);

  // 🔹 إدخال المعدل أو رقم عشري (Double)
  print("Enter your GPA:");
  double gpa = double.parse(stdin.readLineSync()!);

  // 🔹 عرض النتائج
  print("\n===== User Data =====");
  print("Name: $name");
  print("Age: $age");
  print("GPA: $gpa");
}

void main() {
  // 🔹 إدخال الاسم
  print("Enter your name:");
  String name = stdin.readLineSync() ?? "Unknown";

  // 🔹 إدخال العمر (مع حماية من الخطأ)
  print("Enter your age:");
  String ageInput = stdin.readLineSync() ?? "0";
  int age = int.tryParse(ageInput) ?? 0;

  // 🔹 إدخال المعدل (GPA) مع حماية
  print("Enter your GPA:");
  String gpaInput = stdin.readLineSync() ?? "0";
  double gpa = double.tryParse(gpaInput) ?? 0.0;

  // 🔹 عرض البيانات
  print("\n===== User Data =====");
  print("Name: $name");
  print("Age: $age");
  print("GPA: $gpa");
}


//dart run bin/UserInput.dart لحتى يشتغل لبرنامج
