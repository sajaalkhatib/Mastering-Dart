void main() {
  // =======================================
  // List أساسي
  // =======================================
  List<int> numbers = [10, 20, 30, 40, 50, 60];

  print("Original List: $numbers");

  // =======================================
  // 1. take()
  // =======================================
  // بتأخذ أول N عناصر من الليست

  var firstThree = numbers.take(3);

  print("Take 3: $firstThree");

  // تحويل إلى List
  List<int> takeList = numbers.take(2).toList();
  print("Take as List: $takeList");

  // =======================================
  // 2. skip()
  // =======================================
  // بتتخطى أول N عناصر

  var skipped = numbers.skip(2);

  print("Skip 2: $skipped");

  // تحويل إلى List
  List<int> skipList = numbers.skip(3).toList();
  print("Skip as List: $skipList");

  // =======================================
  // مثال عملي (take + skip معاً)
  // =======================================
  List<int> result = numbers.skip(1).take(3).toList();

  print("Skip 1 then Take 3: $result");
} 

//take() ➜ يأخذ من البداية
//skip() ➜ يتجاهل من البداية
//الاثنين يرجعوا Iterable ويمكن تحويلهم إلى List

// النوع     | الفكرة
// ---------------------------------------------
// Iterable | شيء ممكن تكرار العناصر فيه
// List     | مجموعة مرتبة + فيها index
// Set      | مجموعة بدون تكرار