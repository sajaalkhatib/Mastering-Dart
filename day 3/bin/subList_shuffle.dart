void main() {
  // =======================================
  // List أساسي
  // =======================================
  List<int> numbers = [10, 20, 30, 40, 50];

  print("Original List: $numbers");

  // =======================================
  // 1. sublist()
  // =======================================
  // بتأخذ جزء من الليست (من index إلى index-1)

  List<int> part = numbers.sublist(1, 4);

  // index 1 → 20
  // index 4 → غير مشمول
  print("Sublist (1 to 4): $part");

  // =======================================
  // 2. shuffle()
  // =======================================
  // بتغيّر ترتيب العناصر بشكل عشوائي

  List<int> shuffledList = List.from(numbers); // نسخة حتى ما نخرب الأصل
  shuffledList.shuffle();

  print("Shuffled List: $shuffledList");

  // =======================================
  // 3. asMap()
  // =======================================
  // بتحول الليست إلى Map
  // key = index
  // value = element

  Map<int, int> mapVersion = numbers.asMap();

  print("As Map: $mapVersion");

  // =======================================
  // استخدام asMap مع loop
  // =======================================
  mapVersion.forEach((index, value) {
    print("Index: $index -> Value: $value");
  });
}