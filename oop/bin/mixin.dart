/*
=====================================
        MIXIN FULL EXAMPLE
=====================================
*/

// Base class (has constructor)
class Person {
  String name;

  Person(this.name);
}

/*
  Mixin 1: Fly behavior
  ❌ No constructor allowed
*/
mixin Fly {
  void fly() {
    print("I can fly");
  }
}

/*
  Mixin 2: Swim behavior
*/
mixin Swim {
  void swim() {
    print("I can swim");
  }
}

/*
  Bird class inherits from Person
  and uses mixins Fly + Swim
*/
class Bird extends Person with Fly, Swim {

  // Constructor of Bird calls parent constructor
  Bird(super.name);
}

void main() {

  Bird b = Bird("Sparrow");

  print("Name: ${b.name}");

  b.fly();   // from mixin Fly
  b.swim();  // from mixin Swim
}

// Mixin = behaviors only
// No constructor
// No object creation
// Used with "with"

// Mixin هو طريقة لإضافة وظائف للكلاس بدون constructor أو inheritance مباشر


// 🔥 What Is a Mixin

// A mixin is used to share code between multiple classes.

// ✅ What Is Allowed in a Mixin
// You can add properties and static variables.
// You can add regular, abstract, and static methods.
// You can use one or more mixins in a class.


// ❌ What Is Not Allowed in a Mixin
// You can’t define a constructor.
// You can’t extend a mixin.
// You can’t create an object of a mixin.