void main() {
  // 📌 List من الطلاب (كل عنصر عبارة عن Map)
  List<Map<String, dynamic>> students = [
    {'name': 'Ali', 'age': 22, 'grade': 85},
    {'name': 'Sara', 'age': 19, 'grade': 40},
    {'name': 'Ahmad', 'age': 25, 'grade': 90},
    {'name': 'Lina', 'age': 18, 'grade': 70},
  ];

  // ✅ 1. فلترة الطلاب الناجحين (العلامة >= 50)
  var passedStudents = students
      // where بتمر على كل طالب
      // إذا الشرط true → يتم الاحتفاظ فيه
      // إذا false → يتم تجاهله
      .where((student) => student['grade'] >= 50)
      // النتيجة Iterable نحولها List
      .toList();

  print("Passed Students:");
  print(passedStudents);

  // ✅ 2. فلترة الطلاب اللي أعمارهم أكبر من 20
  var olderStudents = students
      // شرط العمر
      .where((student) => student['age'] > 20)
      .toList();

  print("\nStudents older than 20:");
  print(olderStudents);

  // 📌 Set Example
  Set<int> numbers = {10, 15, 20, 25, 30};

  var bigNumbers = numbers
      // فلترة الأرقام الأكبر أو تساوي 20
      .where((n) => n >= 20)
      .toList(); // نحولها List

  print("\nNumbers >= 20:");
  print(bigNumbers);

  // 📌 Map Example
  Map<String, int> salaries = {
    'Ali': 500,
    'Sara': 300,
    'Ahmad': 700,
    'Lina': 450
  };

  var highSalaries = salaries.entries
      // entries عشان نوصل للـ key و value
      // entry.key = الاسم
      // entry.value = الراتب
      .where((entry) => entry.value >= 500)
      .toList();

  print("\nHigh Salaries:");
  print(highSalaries);

  // 🔥 مثال احترافي: where + map
  var namesOfPassed = students
      // أول خطوة: فلترة الناجحين
      .where((s) => s['grade'] >= 50)
      // ثاني خطوة: نجيب الأسماء فقط
      .map((s) => s['name'])
      // تحويل النتيجة إلى List
      .toList();

  print("\nNames of passed students:");
  print(namesOfPassed); // [Ali, Ahmad, Lina]
}