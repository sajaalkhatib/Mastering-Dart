void main() {
  // 🔹 إنشاء object باستخدام constructor
  BankAccount account = BankAccount("Saja", 1000);

  // 🔹 استخدام setter بطريقة آمنة
  account.balance = 2000;

  // 🔹 عمليات على الحساب
  account.deposit(500);
  account.withdraw(300);

  // 🔹 استخدام getter
  print("Owner: ${account.owner}");
  print("Final Balance: ${account.balance}");
}

//  Class (Blueprint)
class BankAccount {
  // 🔒 Encapsulation (private variable)
  double _balance = 0;

  String owner;

  // 🔹 Constructor
  BankAccount(this.owner, double initialBalance) {
    if (initialBalance >= 0) {
      _balance = initialBalance;
    }
  }

  // 🔹 Getter (قراءة الرصيد)
  double get balance {
    return _balance;
  }

  // 🔹 Setter (تعديل الرصيد مع حماية)
  set balance(double value) {
    if (value >= 0) {
      _balance = value;
      print("Balance updated to $value");
    } else {
      print("Invalid balance ");
    }
  }

  // 🔹 Deposit method
  void deposit(double amount) {
    if (amount > 0) {
      _balance += amount;
      print("Deposited: $amount");
    }
  }

  // 🔹 Withdraw method
  void withdraw(double amount) {
    if (amount <= _balance) {
      _balance -= amount;
      print("Withdrawn: $amount");
    } else {
      print("Not enough balance ");
    }
  }
}

//
// OOP Concepts Summary:
// - Class: Blueprint that defines structure and behavior
// - Object: Real instance created from a class
// - Encapsulation: Hiding data and protecting it from direct access
// - Getter: Provides safe read access to private data
// - Setter: Controls and validates data modification
//
