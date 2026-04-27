void main() {
  // =======================================
  // List أرقام
  // =======================================
  List<int> numbers = [10, 20, 30, 40, 50];

  print("Numbers: $numbers");

  // =======================================
  // 1. any()
  // =======================================
  // بتفحص: هل في عنصر واحد على الأقل يحقق الشرط؟

  bool hasGreaterThan30 = numbers.any((n) => n > 30);

  print("Has number > 30: $hasGreaterThan30");

  // مثال ثاني
  bool hasNegative = numbers.any((n) => n < 0);

  print("Has negative number: $hasNegative");

  // =======================================
  // 2. every()
  // =======================================
  // بتفحص: هل كل العناصر تحقق الشرط؟

  bool allPositive = numbers.every((n) => n > 0);

  print("All numbers positive: $allPositive");

  bool allGreaterThan10 = numbers.every((n) => n > 10);

  print("All > 10: $allGreaterThan10");

  // =======================================
  // مثال على Strings
  // =======================================
  List<String> names = ["Saja", "Ali", "Ahmad"];

  bool allLongNames = names.every((name) => name.length > 2);
  bool hasNameStartsWithA = names.any((name) => name.startsWith("A"));

  print("All names > 2 chars: $allLongNames");
  print("Has name starts with A: $hasNameStartsWithA");
}

// Method   | المعنى       | النتيجة
// -
// any()    | هل يوجد عنصر واحد على الأقل يحقق الشرط؟        | true / false
// every()  | هل جميع العناصر تحقق الشرط؟                    | true / false