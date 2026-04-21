void main() {

  // =========================
  // 🔵 إنشاء Set
  // =========================
  Set<int> numbers = {10, 20, 30, 40, 50};

  print("Set: $numbers");

  // =========================
  // 🔹 first
  // =========================
  // أول عنصر في الـ Set
  print("First element: ${numbers.first}");

  // =========================
  // 🔹 last
  // =========================
  // آخر عنصر في الـ Set
  print("Last element: ${numbers.last}");

  // =========================
  // 🔹 isEmpty
  // =========================
  // هل الـ Set فارغ؟
  print("Is Empty? ${numbers.isEmpty}");

  // =========================
  // 🔹 isNotEmpty
  // =========================
  // هل الـ Set يحتوي عناصر؟
  print("Is Not Empty? ${numbers.isNotEmpty}");

  // =========================
  // 🔹 length
  // =========================
  // عدد العناصر داخل الـ Set
  print("Length: ${numbers.length}");

}