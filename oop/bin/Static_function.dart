// Static Function (Method) هي دالة تنتمي إلى الكلاس نفسه وليس إلى الـ objects.

/*
Instance Method:
→ تحتاج object
→ تستخدم بيانات خاصة بكل object

Static Method:
→ لا تحتاج object
→ تستخدم بيانات عامة
*/

class Math {

  // Static function
  static int add(int a, int b) {
    return a + b;
  }
}

void main() {

  // استدعاء بدون object
  print(Math.add(5, 3)); // 8
}