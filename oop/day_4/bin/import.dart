import 'dart:io'; // للإدخال والإخراج (console + files)
import 'dart:async'; // للتعامل مع async و Future
import 'dart:math' as math; // مكتبة الرياضيات مع alias

// ملف محلي داخل المشروع (افترض عندك ملف user.dart)
import 'Example_SignIn.dart';

void main() async {
  // 🔹 استخدام dart:io
  stdout.writeln("Enter your name:");
  String name = stdin.readLineSync() ?? "";

  print("Hello $name 👋");

  // 🔹 استخدام dart:math مع alias (math)
  double randomValue = math.Random().nextDouble();
  print("Random number: $randomValue");

  // 🔹 استخدام async من dart:async
  print("Waiting 2 seconds...");
  await Future.delayed(Duration(seconds: 2));
  print("Done waiting ✔");


}