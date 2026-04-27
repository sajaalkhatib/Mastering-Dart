void main() {

  // 🔹 إنشاء List
  List<String> names = ["Saja", "Lara", "Omar"];

  // =========================
  // 🔵 1. For Loop (باستخدام index)
  // =========================
  print("=== FOR LOOP ===");

  for (int i = 0; i < names.length; i++) {
    // i = index
    // names[i] = العنصر الحالي

    print("Index $i: ${names[i]}");
  }

  // =========================
  // 🟢 2. For-in Loop (الأبسط)
  // =========================
  print("\n=== FOR-IN LOOP ===");

  for (String name in names) {
    // name = كل عنصر داخل القائمة مباشرة

    print("Hello $name");
  }

  // =========================
  // 🟡 3. forEach Loop
  // =========================
  print("\n=== FOREACH LOOP ===");

  names.forEach((name) {
    // name = العنصر الحالي

    print("Welcome $name");
  });



///// 

List<int> numbers = [10, 15, 20, 25, 30];

  for (int num in numbers) {

    // 🔹 نطبع فقط الأرقام الزوجية
    if (num % 2 == 0) {
      print("Even: $num");
    }

  }

  

  // 🔹 2D List (صفوف وأعمدة)
  List<List<int>> matrix = [
    [1, 2, 3],   // row 0
    [4, 5, 6],   // row 1
    [7, 8, 9],   // row 2
  ];

  // 🔹 الوصول لعنصر
  print(matrix[0][0]); // 1
  print(matrix[1][2]); // 6


}