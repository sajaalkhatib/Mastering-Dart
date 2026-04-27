void main() {
  // 🔹 1) Parameterized Constructor
  Car car1 = Car("BMW", "Black");
  car1.drive();

  // 🔹 2) Named Constructor
  Car car2 = Car.bmw();
  car2.drive();

  // 🔹 3) Constructor with body
  Car car3 = Car.withMessage("Audi", "Red");
  car3.drive();

  // 🔹 4) Factory Constructor
  Car car4 = Car.factory("", "White"); // brand فاضي
  car4.drive();

  // 🔹 5) Const Constructor
  const Car car5 = Car.constCar("Toyota", "Blue");
  car5.drive();
}

class Car {
  // لازم تكون final عشان const
  final String brand;
  final String color;

  // 🔹 1) Parameterized Constructor
  Car(this.brand, this.color);

  // 🔹 2) Named Constructor
  Car.bmw()
      : brand = "BMW",
        color = "Black";

  // 🔹 3) Constructor with body
  Car.withMessage(this.brand, this.color) {
    print("Car created successfully ✔");
  }

  // 🔹 4) Factory Constructor
  factory Car.factory(String brand, String color) {
    // validation مثال
    if (brand.isEmpty) {
      return Car("Unknown", color);
    }
    return Car(brand, color);
  }

  // 🔹 5) Const Constructor
  const Car.constCar(this.brand, this.color);

  // Method
  void drive() {
    print("The $brand car is driving 🚗");
  }
}

//ملاحظة مهمة جدًا
//const يحتاج final
//factory ما ينشئ object دائمًا
//named مفيد للتنظيم

//| الحالة                            | النتيجة |
//| --------------------------------- | ------- |
//| const constructor + String عادي ❌ | error   |
//| const constructor + final ✔️      | شغال    |
