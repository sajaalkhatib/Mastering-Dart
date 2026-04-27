// =======================================
// Anonymous & Arrow Functions - Dart
// =======================================

void main() {
  // ===================================
  // 1. Anonymous Function داخل متغير
  // ===================================
  var greet = () {
    // دالة بدون اسم
    print("Hello Saja");
  };

  greet(); // استدعاء الدالة

  // ===================================
  // 2. Anonymous Function مع باراميتر
  // ===================================
  var sayHello = (String name) {
    print("Hello $name");
  };

  sayHello("Saja");

  // ===================================
  // 3. Anonymous Function بترجع قيمة
  // ===================================
  var add = (int a, int b) {
    return a + b;
  };

  print("Sum: ${add(3, 4)}");

  // ===================================
  // 4. Arrow Function (اختصار)
  // ===================================
  var multiply = (int a, int b) => a * b;

  print("Multiply: ${multiply(5, 2)}");

  // ===================================
  // 5. استخدامهم مع List (مهم جداً 🔥)
  // ===================================
  List<int> numbers = [1, 2, 3, 4, 5];

  // استخدام forEach مع anonymous function
  numbers.forEach((num) {
    print("Number: $num");
  });

  // استخدام arrow function
  numbers.forEach((num) => print("Arrow: $num"));

  // ===================================
  // 6. Higher Order Function
  // ===================================
  operate(3, 4, (a, b) {
    // anonymous function
    return a + b;
  });

  operate(5, 2, (a, b) => a - b); // arrow
}

// =======================================
// Higher Order Function
// =======================================
void operate(int a, int b, int Function(int, int) op) {
  // تستقبل دالة كـ parameter
  int result = op(a, b);
  print("Result: $result");
}