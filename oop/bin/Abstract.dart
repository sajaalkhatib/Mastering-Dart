/*
✔ Cannot create object from abstract class
✔ Can contain abstract + normal methods
✔ Child must implement abstract methods
✔ Used for structure/design
*/

/*
=========================================
        Abstract Class in Dart
=========================================
*/

abstract class Animal {

  // Abstract method (no body)
  void sound();

  // Normal method
  void sleep() {
    print("Animal is sleeping");
  }
}

/*
  Dog implements abstract behavior
*/
class Dog extends Animal {

  @override
  void sound() {
    print("Dog barks");
  }
}

/*
  Cat implements abstract behavior
*/
class Cat extends Animal {

  @override
  void sound() {
    print("Cat meows");
  }
}

void main() {

  Dog d = Dog();
  d.sound(); // Dog barks
  d.sleep(); // Animal is sleeping

  Cat c = Cat();
  c.sound(); // Cat meows
  c.sleep(); // Animal is sleeping
}