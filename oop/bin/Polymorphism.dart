/*
=========================================
        Polymorphism - Overriding
=========================================
*/

class Animal {

  void sound() {
    print("Animal makes a sound");
  }
}

class Dog extends Animal {

  @override
  void sound() {
    print("Dog barks");
  }
}

class Cat extends Animal {

  @override
  void sound() {
    print("Cat meows");
  }
}

class Bird extends Animal {

  @override
  void sound() {
    print("Bird chirps");
  }
}

void main() {

  Animal a;

  a = Dog();
  a.sound(); // Dog barks

  a = Cat();
  a.sound(); // Cat meows

  a = Bird();
  a.sound(); // Bird chirps
}

/*
Polymorphism = Same method, different behavior

✔ Achieved in Dart using:
   → Method Overriding

✔ Key concept:
   → Parent reference = Child object (Upcasting)

✔ Benefits:
   - Flexibility
   - Reusability
   - Clean architecture
*/

// Polymorphism يعني:

// "نفس الفانكشن  لكن كل كلاس يطبقها بطريقته الخاصة