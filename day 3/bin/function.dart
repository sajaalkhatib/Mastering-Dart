// ===============================
// Dart Functions - Full Example
// ===============================

void main() {
  // 1. استدعاء دالة بسيطة
  greet();

  // 2. دالة مع باراميتر
  greetUser("Saja");

  // 3. دالة بترجع قيمة
  int result = add(3, 5);
  print("Result: $result");

  // 4. Arrow Function
  print("Arrow Result: ${multiply(4, 2)}");

  // 5. Optional Parameters
  greetCountry("Saja");
  greetCountry("Saja", "UAE");

  // 6. Named Parameters
  createUser(name: "Saja", age: 22);
  createUser(name: "Ali");

  // 7. Function داخل متغير (Anonymous Function)
  var square = (int number) {
    return number * number;
  };
  print("Square: ${square(6)}");

  // 8. Higher Order Function (دالة تستقبل دالة)
  operate(3, 4, add);

  // 9. Lambda مع Higher Order
  operate(5, 2, (a, b) => a - b);
}

// =======================================
// 1. Simple Function
// =======================================
void greet() {
  // دالة بدون باراميتر وبدون return
  print("Hello!");
}

// =======================================
// 2. Function with Parameter
// =======================================
void greetUser(String name) {
  // name هو المدخل
  print("Hello $name");
}

// =======================================
// 3. Function with Return
// =======================================
int add(int a, int b) {
  // ترجع مجموع رقمين
  return a + b;
}

// =======================================
// 4. Arrow Function (اختصار)
// =======================================
int multiply(int a, int b) => a * b;

// =======================================
// 5. Optional Parameters
// =======================================
void greetCountry(String name, [String country = "Jordan"]) {
  // country اختياري وله قيمة افتراضية
  print("Hello $name from $country");
}

// =======================================
// 6. Named Parameters
// =======================================
void createUser({required String name, int age = 18}) {
  // name إجباري، age اختياري
  print("Name: $name, Age: $age");
}

// =======================================
// 7. Higher Order Function
// =======================================
void operate(int a, int b, int Function(int, int) operation) {
  // تستقبل دالة كـ parameter
  int result = operation(a, b);
  print("Operation Result: $result");
}