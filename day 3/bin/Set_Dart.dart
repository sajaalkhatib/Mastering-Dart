// 👉 استيراد مكتبة الإدخال والإخراج
import 'dart:io';

void main() {

  // 🔹 إنشاء Set (مجموعة بدون تكرار)
  Set<String> names = {"Saja", "Ahmad", "Lina", "Saja"};

  // 👉 ملاحظة: "Saja" مكررة لكن Set بحذف التكرار تلقائيًا
  print("Names: $names"); // {Saja, Ahmad, Lina}

  // -------------------------------
  // 🔹 Properties (خصائص)
  // -------------------------------

  print(names.first);       // أول عنصر
  print(names.last);        // آخر عنصر
  print(names.isEmpty);     // هل فاضي؟
  print(names.isNotEmpty);  // هل فيه عناصر؟
  print(names.length);      // عدد العناصر
  print(names.runtimeType); // نوع البيانات

  // -------------------------------
  // 🔹 إضافة عناصر
  // -------------------------------

  names.add("Omar"); 
  print("After add: $names");

  // 👉 إضافة أكثر من عنصر
  names.addAll(["Sara", "Ali"]);
  print("After addAll: $names");

  // -------------------------------
  // 🔹 حذف عناصر
  // -------------------------------

  names.remove("Ahmad"); 
  print("After remove: $names");

  // -------------------------------
  // 🔹 التحقق من وجود عنصر
  // -------------------------------

  print(names.contains("Lina")); // true أو false

  // -------------------------------
  // 🔹 Loop على Set
  // -------------------------------

  print("Loop:");
  for (var name in names) {
    print(name);
  }

  // -------------------------------
  // 🔹 تحويل List → Set (لحذف التكرار)
  // -------------------------------

  List<int> numbers = [1, 2, 2, 3, 4, 4];

  Set<int> uniqueNumbers = numbers.toSet();

  print("Unique Numbers: $uniqueNumbers"); // {1,2,3,4}

  // -------------------------------
  // 🔹 تحويل Set → List
  // -------------------------------

  List<int> backToList = uniqueNumbers.toList();

  print("Back To List: $backToList");

  // -------------------------------
  // 🔹 حذف كل العناصر
  // -------------------------------

  names.clear();
  print("After clear: $names"); // {}
}