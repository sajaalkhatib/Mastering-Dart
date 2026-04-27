void main() {
  // ============================
  // 🟦 Generic Class Example
  // ============================

  Box<int> intBox = Box(100);
  intBox.showValue();

  Box<String> stringBox = Box("Hello Saja");
  stringBox.showValue();

  print("------------------------");

  // ============================
  // 🟩 Generic Function Example
  // ============================

  print(getValue<int>(55));
  print(getValue<String>("Dart"));

  print("------------------------");

  // ============================
  // 🟨 Generic Function with List
  // ============================

  List<int> numbers = [10, 20, 30];
  List<String> names = ["Ali", "Sara", "Omar"];

  print(firstItem(numbers)); // أول عنصر من int list
  print(firstItem(names));   // أول عنصر من String list
}

/////////////////////////////////////////////////////

// 🧱 Generic CLASS
// T = Type (نوع البيانات غير محدد)
class Box<T> {
  T value;

  Box(this.value);

  void showValue() {
    print("Box Value: $value");
  }
}

/////////////////////////////////////////////////////

// ⚙️ Generic FUNCTION (ترجع نفس النوع)
T getValue<T>(T value) {
  return value;
}

/////////////////////////////////////////////////////

// ⚙️ Generic FUNCTION مع List
T firstItem<T>(List<T> list) {
  return list[0];
}


//Generics in Dart let you write one piece of code that works with different
// data types safely. A generic class like Box<T> can store any
// type such as int or String, and a generic function can process and return
// any type without repeating code. This makes the code more flexible, reusable,
// and easier to maintain while keeping type safety.
