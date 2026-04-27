void main() {

  // =========================
  // 🔵 1. FOR LOOP
  // =========================
  // نستخدمه لما نعرف عدد التكرارات مسبقاً

  print("=== FOR LOOP ===");

  for (int i = 1; i <= 5; i++) {
    // i = البداية
    // i <= 5 الشرط (يستمر طالما true)
    // i++ زيادة كل مرة

    print("For Loop iteration: $i");
  }


  // =========================
  // 🟡 2. WHILE LOOP
  // =========================
  // نستخدمه لما الشرط هو اللي يحدد التكرار

  print("\n=== WHILE LOOP ===");

  int w = 1; // البداية

  while (w <= 5) {
    // الشرط يتم فحصه قبل التنفيذ

    print("While Loop iteration: $w");

    w++; // مهم جداً حتى لا يصير infinite loop
  }


  // =========================
  // 🟠 3. DO WHILE LOOP
  // =========================
  // يشتغل مرة واحدة على الأقل حتى لو الشرط false

  print("\n=== DO WHILE LOOP ===");

  int d = 1;

  do {
    // يتم التنفيذ أولاً

    print("Do While Loop iteration: $d");

    d++;

  } while (d <= 5); // الشرط ينفحص بعد التنفيذ


  // =========================
  // 🟢 4. FOR EACH LOOP
  // =========================
  // نستخدمه مع Lists

  print("\n=== FOR EACH LOOP ===");

  List<String> names = ["Saja", "Lara", "Omar"];

  names.forEach((name) {
    // name = كل عنصر داخل الليست

    print("Hello $name");
  });

}