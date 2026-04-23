// =======================================
// Named Parameters in Dart
// =======================================

void main() {
  // ===================================
  // استدعاء دالة بـ Named Parameters
  // ===================================
  createUser(name: "Saja", age: 22);

  // ممكن نغير الترتيب عادي
  createUser(age: 30, name: "Ahmad");

  // إذا ما بعثنا age بياخذ القيمة الافتراضية
  createUser(name: "Ali");

  // ===================================
  // مثال ثاني
  // ===================================
  printUserInfo(name: "Saja", country: "Jordan");

  // country اختياري
  printUserInfo(name: "Lina");
}

// =======================================
// 1. Named Parameters (required + optional)
// =======================================
void createUser({required String name, int age = 18}) {
  // {} تعني Named Parameters

  // required ➜ لازم المستخدم يبعثه
  // age ➜ اختياري وله قيمة افتراضية

  print("Name: $name");
  print("Age: $age");
}

// =======================================
// 2. مثال ثاني
// =======================================
void printUserInfo({required String name, String country = "Unknown"}) {
  // name إجباري
  // country اختياري

  print("User: $name from $country");
}

// =======================================
// 3. Named Parameters مع Return
// =======================================
String formatUser({required String name, int age = 18}) {
  // دالة بترجع قيمة باستخدام named parameters
  return "User $name is $age years old";
}

// =======================================
// 4. استدعاء مع تخزين النتيجة
// =======================================
void testReturn() {
  String result = formatUser(name: "Saja", age: 22);
  print(result);
}

// =======================================
// 5. خطأ شائع ❌
// =======================================

// ❌ هذا غلط لأنه name required
/*
createUser(age: 25);
*/

// ❌ هذا غلط (بدون اسم الباراميتر)
/*
createUser("Saja", 22);
*/