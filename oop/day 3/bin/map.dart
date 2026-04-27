// 👉 استيراد مكتبة الإدخال والإخراج
import 'dart:io';

void main() {

  // 🔹 إنشاء Map (مفتاح + قيمة)
  Map<String, int> students = {
    "Saja": 90,
    "Ahmad": 85,
    "Lina": 95
  };

  print("Students Map: $students");

  // -------------------------------
  // 🔹 Properties (خصائص)
  // -------------------------------

  // 👉 الحصول على جميع المفاتيح
  print("Keys: ${students.keys}"); 
  // (Saja, Ahmad, Lina)

  // 👉 الحصول على جميع القيم
  print("Values: ${students.values}"); 
  // (90, 85, 95)

  // 👉 هل الـ Map فاضي؟
  print("Is Empty: ${students.isEmpty}"); // false

  // 👉 هل فيه عناصر؟
  print("Is Not Empty: ${students.isNotEmpty}"); // true

  // 👉 عدد العناصر
  print("Length: ${students.length}"); // 3

  // -------------------------------
  // 🔹 Loop على keys
  // -------------------------------

  print("Loop Keys:");
  for (var key in students.keys) {
    print(key);
  }

  // -------------------------------
  // 🔹 Loop على values
  // -------------------------------

  print("Loop Values:");
  for (var value in students.values) {
    print(value);
  }

  // -------------------------------
  // 🔹 Loop على Map كامل
  // -------------------------------

  print("Loop Map:");
  students.forEach((key, value) {
    print("$key => $value");
  });

  // -------------------------------
  // 🔹 إضافة عنصر
  // -------------------------------

  students["Omar"] = 88;
  print("After Add: $students");

  // -------------------------------
  // 🔹 حذف عنصر
  // -------------------------------

  students.remove("Ahmad");
  print("After Remove: $students");

  // -------------------------------
  // 🔹 حذف الكل
  // -------------------------------

  students.clear();
  print("After Clear: $students"); // {}
}