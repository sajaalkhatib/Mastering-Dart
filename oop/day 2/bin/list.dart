void main() {

  // =========================
  // 🔵 إنشاء List
  // =========================
  List<String> students = ["Saja", "Lara", "Omar"];
  List<int> numbers = [5, 10, 15, 20];
    List random = [5, "saja Alkhatib", 12.3, true];
    print(random[1]);



  // =========================
  // 🔹 طباعة كل العناصر
  // =========================
  print("All Students:");
  print(students);

  // =========================
  // 🔹 الوصول لعنصر معين (index)
  // =========================
  // index يبدأ من 0
  print("\nFirst Student:");
  print(students[0]); // Saja

  // =========================
  // 🔹 إضافة عنصر جديد
  // =========================
  students.add("Ali");
  print("\nAfter Adding:");
  print(students);

  // =========================
  // 🔹 حذف عنصر
  // =========================
  students.remove("Lara");
  print("\nAfter Removing:");
  print(students);

  // =========================
  // 🔹 تعديل عنصر
  // =========================
  students[0] = "Saja Al-Khatib";
  print("\nAfter Update:");
  print(students);

  // =========================
  // 🔹 طول القائمة
  // =========================
  print("\nList Length:");
  print(students.length);

  // =========================
  // 🔹 Loop على List
  // =========================
  print("\nLoop Through List:");

  for (int i = 0; i < students.length; i++) {
    print("Student ${i + 1}: ${students[i]}");
  }

}