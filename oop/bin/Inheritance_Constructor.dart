/*
=====================================================
     Constructor Inheritance in Dart (Full Example)
=====================================================

Concepts:
✔ Constructors are NOT inherited
✔ Using super()
✔ Named constructors
✔ Multilevel inheritance
✔ Execution order
*/

void main() {

  print("===== Creating Manager =====");
  Manager m = Manager("Saja", 5000);

  print("\n===== Creating Developer =====");
  Developer d = Developer("Ahmad", 3000);

  print("\n===== Creating Senior Developer =====");
  SeniorDeveloper s = SeniorDeveloper("Lina", 6000);
}

/*
=====================================================
        Base Class (Parent)
=====================================================
*/
class Employee {

  String name;
  double salary;

  // Default constructor
  Employee(this.name, this.salary) {
    print("Employee constructor called");
  }

  // Named constructor
  Employee.named(this.name) : salary = 0 {
    print("Employee named constructor called");
  }
}

/*
=====================================================
        Single / Hierarchical Inheritance
=====================================================
*/
class Manager extends Employee {

  // Calling parent constructor using super
  Manager(String name, double salary) : super(name, salary) {
    print("Manager constructor called");
  }
}

class Developer extends Employee {

  Developer(String name, double salary) : super(name, salary) {
    print("Developer constructor called");
  }
}

/*
=====================================================
        Multilevel Inheritance
=====================================================
*/
class SeniorDeveloper extends Developer {

  // Calling parent (Developer) constructor
  // which already calls Employee constructor
  SeniorDeveloper(String name, double salary)
      : super(name, salary) {
    print("Senior Developer constructor called");
  }
}

/*
=====================================================
        Named Constructor Example
=====================================================
*/
class Intern extends Employee {

  // Calling named constructor from parent
  Intern(String name) : super.named(name) {
    print("Intern constructor called");
  }
}

/*
- Constructors are NOT inherited
- Use super() to call parent constructor
- Parent constructor runs FIRST
- Child must pass required parameters
- Can call named constructors using super.named()
*/


// كيف بيشتغل super؟
// Manager(String name, double salary) : super(name, salary);

// 👉 معناها:
// "روح نادِ constructor تبع الأب Employee ومرّر له القيم"

