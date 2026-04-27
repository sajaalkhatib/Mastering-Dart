void main() {
  // =======================================
  // List أرقام
  // =======================================
  List<int> numbers = [10, 20, 30, 40];

  print("Numbers: $numbers");

  // =======================================
  // 1. reduce()
  // =======================================
  // بتجمع العناصر بدون قيمة بداية

  int sumReduce = numbers.reduce((a, b) {
    // a = accumulated value
    // b = next element
    return a + b;
  });

  print("Sum using reduce: $sumReduce");

  // =======================================
  // 2. fold()
  // =======================================
  // نفس reduce لكن مع قيمة بداية (initial value)

  int sumFold = numbers.fold(0, (a, b) {
    // 0 = initial value
    return a + b;
  });

  print("Sum using fold: $sumFold");

  // =======================================
  // مثال مهم (fold مع String)
  // =======================================
  List<String> names = ["Saja", "Ali", "Ahmad"];

  String result = names.fold("", (a, b) {
    return a + " " + b;
  });

  print("Names combined: $result");

  // =======================================
  // مثال عملي (multiply)
  // =======================================
  int product = numbers.fold(1, (a, b) => a * b);

  print("Product using fold: $product");
}

