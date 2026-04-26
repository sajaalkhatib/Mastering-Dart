// Advantages of OOP:
// - Easy to understand and use
// - Increases reusability and decreases complexity
// - Improves programmer productivity
// - Makes code easier to maintain, modify, and debug
// - Promotes teamwork and collaboration
// - Reduces code repetition

// Features of OOP:
// - Class
// - Object
// - Encapsulation
// - Inheritance
// - Polymorphism
// - Abstraction

void main() {
  // Create an object from the Car class
  Car car1 = Car();

  // Assign values to object properties
  car1.brand = "BMW";
  car1.color = "Black";

  // Call method from the object
  car1.drive();
}

// Car class (blueprint)
class Car {
  // Properties
  String? brand;
  String? color;

  // Method inside the class
  void drive() {
    print("The $brand car is driving 🚗");
  }
}