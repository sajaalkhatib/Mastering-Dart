// Rules for Factory Constructors

// 1 - A factory constructor can be either named or unnamed,
//     and it is called like a normal constructor.

// 2 - It cannot access instance members of the class.

// 3 - A factory constructor must return an instance of the class
//     or a subclass of it.

// 4 - You cannot use the 'this' keyword inside a factory constructor.


class User {
  String name;

  User(this.name);

  // Factory constructor (named)
  factory User.create(String name) {
    // 2 - ما بنستخدم instance members مثل this.name
    // 4 - ممنوع استخدام this

    if (name.isEmpty) {
      // 3 - لازم يرجع object من نفس الكلاس
      return User("Guest");
    }

    return User(name);
  }

  // Factory constructor unnamed
  factory User.anonymous() {
    return User("Anonymous");
  }
}

// Subclass لتوضيح القاعدة 3
class Admin extends User {
  Admin(String name) : super(name);

  factory Admin.createAdmin(String name) {
    return Admin(name); // يرجع subclass
  }
}

void main() {
  var u1 = User.create("Saja");
  var u2 = User.create("");
  var u3 = User.anonymous();
  var admin = Admin.createAdmin("Root");

  print(u1.name);    // Saja
  print(u2.name);    // Guest
  print(u3.name);    // Anonymous
  print(admin.name); // Root
}