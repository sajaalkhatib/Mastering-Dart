/*
- super.named() is used to call a specific named constructor
  from the parent class.

- It is NOT only about having multiple constructors.

- You MUST use it if:
  • The parent has only named constructors
  • Or you want to choose a specific constructor

- Parent constructor always runs BEFORE child constructor
*/


class Person {
  String name;

  // Only ONE named constructor
  Person.named(this.name) {
    print("Person named constructor");
  }
}

class Student extends Person {

  // لازم نستخدم super.named
  Student(String name) : super.named(name) {
    print("Student constructor");
  }
}




class Employee {
  String name;
  double salary;

  Employee.basic(this.name) : salary = 0;

  Employee.full(this.name, this.salary);
}

class Manager extends Employee {

  // اخترنا constructor معين (full)
  Manager(String name, double salary)
      : super.full(name, salary);
}

