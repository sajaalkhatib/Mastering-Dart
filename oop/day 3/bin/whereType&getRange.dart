void main() {
  // =======================================
  // List فيها أنواع مختلفة (int + String + bool)
  // =======================================
  List mixedList = [10, "Saja", 20, true, "Dart", 30];

  print("Original List: $mixedList");

  // =======================================
  // 1. whereType()
  // =======================================
  // بتفلتر العناصر حسب النوع

  List<int> numbers = mixedList.whereType<int>().toList();
  List<String> strings = mixedList.whereType<String>().toList();
  List<bool> bools = mixedList.whereType<bool>().toList();

  print("Integers: $numbers");
  print("Strings: $strings");
  print("Booleans: $bools");

  // =======================================
  // 2. getRange()
  // =======================================
  List<int> nums = [10, 20, 30, 40, 50, 60];

  // بتاخذ range من الليست
  // البداية inclusive والنهاية exclusive

  Iterable<int> part = nums.getRange(1, 4);

  print("Original nums: $nums");
  print("Range (1 to 4): $part");

  // =======================================
  // تحويل getRange إلى List
  // =======================================
  List<int> rangeList = nums.getRange(2, 5).toList();

  print("Range as List: $rangeList");

  // =======================================
  // مثال عملي
  // =======================================
  List<String> names = ["Ali", "Saja", "Ahmad", "Lina", "Omar"];

  List<String> selected = names.getRange(1, 3).toList();

  print("Selected names: $selected");
}