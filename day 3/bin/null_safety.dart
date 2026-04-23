void main() {
  // =======================================
  // 1. Non-nullable (لا يقبل null)
  // =======================================
  String name = "Saja";

  print(name); // ✔ آمن
  print(name.length); // ✔ آمن

  // =======================================
  // 2. Nullable (يسمح null)
  // =======================================
  String? userName;

  print(userName); // null

  // print(userName.length); ❌ خطأ (لأنه ممكن يكون null)

  // =======================================
  // 3. Null Check (?)
  // =======================================
  print(userName?.length); // ✔ آمن (يرجع null بدل crash)

  // =======================================
  // 4. Default Value (??)
  // =======================================
  String displayName = userName ?? "Guest";

  print(displayName); // Guest

  // =======================================
  // 5. Force Unwrap (!)
  // =======================================
  String? city = "Amman";

  print(city!); // ✔ نقول للمترجم: أنا متأكد مش null

  // =======================================
  // 6. Late keyword
  // =======================================
  late String country;

  country = "Jordan";

  print(country); // ✔ بعد التهيئة

}


//Dart يمنع أخطاء null من الأساس
//? ➜ ممكن يكون null
//?? ➜ قيمة بديلة
//?. ➜ حماية من الكسر
//! ➜ إجبار (خطر)
//late ➜ تأجيل التهيئة