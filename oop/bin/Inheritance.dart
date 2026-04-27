/*
=========================================
        OOP Inheritance in Dart
=========================================

Inheritance:
A mechanism where a class (child) inherits
properties and methods from another class (parent)
using the keyword "extends".

Types of Inheritance in Dart:
1- Single Inheritance
2- Multilevel Inheritance
3- Hierarchical Inheritance

Note:
Dart does NOT support Multiple Inheritance
(a class cannot extend more than one class),
but you can use mixins or implements instead.
*/

void main() {

  print("===== Single Inheritance =====");
  Dog dog = Dog();
  dog.eat();   // Inherited from Animal
  dog.bark();  // Defined in Dog

  print("\n===== Multilevel Inheritance =====");
  Puppy puppy = Puppy();
  puppy.eat();   // From Animal
  puppy.bark();  // From Dog
  puppy.weep();  // From Puppy

  print("\n===== Hierarchical Inheritance =====");
  Cat cat = Cat();
  cat.eat();   // From Animal
  cat.meow();  // From Cat

  print("\n===== Mixin Example =====");
  Bird bird = Bird();
  bird.eat();  // From Animal
  bird.fly();  // From mixin
  bird.chirp();// From Bird
}

/*
=========================================
        Base Class (Parent)
=========================================
*/
class Animal {

  // Common method for all animals
  void eat() {
    print("Animal is eating");
  }
}

/*
=========================================
        1- Single Inheritance
=========================================

Dog inherits directly from Animal
*/
class Dog extends Animal {

  // Specific method for Dog
  void bark() {
    print("Dog is barking");
  }
}

/*
=========================================
        2- Multilevel Inheritance
=========================================

Puppy inherits from Dog,
and Dog already inherits from Animal

Hierarchy:
Animal → Dog → Puppy
*/
class Puppy extends Dog {

  // Specific method for Puppy
  void weep() {
    print("Puppy is weeping");
  }
}

/*
=========================================
        3- Hierarchical Inheritance
=========================================

Multiple classes inherit from the same parent
*/
class Cat extends Animal {

  // Specific method for Cat
  void meow() {
    print("Cat is meowing");
  }
}

/*
=========================================
        Mixin Example (Alternative)
=========================================

Used instead of multiple inheritance
*/
mixin Fly {
  void fly() {
    print("Flying...");
  }
}

class Bird extends Animal with Fly {

  void chirp() {
    print("Bird is chirping");
  }
}

/*
=========================================
        Important Interview Notes
=========================================

❌ Multiple Inheritance is NOT allowed:
class A {}
class B {}
class C extends A, B {} // ERROR

✅ Alternatives:
- mixins (with)
- interfaces (implements)

✔ Benefits of Inheritance:
- Code reuse
- Better organization
- Easier maintenance
*/