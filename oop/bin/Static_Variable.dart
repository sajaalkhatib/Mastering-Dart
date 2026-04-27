// Static Variable يعني:

// "متغير واحد مشترك بين كل الـ objects من نفس الكلاس


/*
✔ belongs to class not object
✔ shared across all objects
✔ accessed using ClassName.variable
✔ only one copy in memory
✔ used for common/shared data
*/

class Student {

  String name;

  static int count = 0; // shared variable

  Student(this.name) {
    count++; // كل مرة ننشئ object يزيد العدد
  }

  void show() {
    print("Name: $name");
  }
}

void main() {

  Student s1 = Student("Ali");
  Student s2 = Student("Sara");
  Student s3 = Student("Omar");

  print("Total Students: ${Student.count}");
}