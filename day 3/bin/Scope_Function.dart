// =======================================
// Scope in Functions - Dart
// =======================================

// =======================================
// Global Scope (متغير عام)
// =======================================
String globalName = "Saja";

void main() {
  // ===================================
  // Local Scope (داخل main)
  // ===================================
  int x = 10;

  print("Inside main: $x"); // ✔ مسموح

  testScope();

  // print(y); ❌ خطأ: y مش معرف هون
}

// =======================================
// Function Scope
// =======================================
void testScope() {
  // ===================================
  // Local Variable داخل الدالة
  // ===================================
  int y = 20;

  print("Inside function: $y"); // ✔ مسموح

  // ===================================
  // الوصول للمتغير العام
  // ===================================
  print("Global variable: $globalName"); // ✔ مسموح
}

// =======================================
// Block Scope (داخل if / loop)
// =======================================
void blockScopeExample() {
  if (true) {
    int z = 30; // متغير داخل block
    print("Inside if: $z"); // ✔ مسموح
  }

  // print(z); ❌ خطأ: خارج الـ block
}

// =======================================
// Shadowing (تغطية المتغير)
// =======================================
void shadowingExample() {
  String name = "Local Name"; // متغير محلي

  print(name); // يطبع المحلي

  print(globalName); // يطبع العام
}

// =======================================
// Nested Functions Scope
// =======================================
void outerFunction() {
  int outerVar = 100;

  // دالة داخل دالة
  void innerFunction() {
    // تقدر توصل لمتغير الأب
    print("OuterVar: $outerVar");
  }

  innerFunction();
}