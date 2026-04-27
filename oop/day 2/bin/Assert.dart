void main() {

  // 🔹 بيانات المستخدم
  String username = "saja";
  String email = "saja@gmail.com";
  int age = 22;
  String password = "1234";

  // =========================
  // 🔥 ASSERT VALIDATIONS
  // =========================

  // 1️⃣ التأكد أن اسم المستخدم مش فاضي
  assert(username.isNotEmpty, "Username cannot be empty");

  // 2️⃣ التأكد أن الإيميل يحتوي على @
  assert(email.contains("@"), "Invalid email format");

  // 3️⃣ التأكد من العمر (لازم يكون 18 أو أكثر)
  assert(age >= 18, "User must be 18 or older");

  // 4️⃣ التأكد من قوة الباسورد
  assert(password.length >= 4, "Password must be at least 4 characters");

  // =========================
  // ✅ إذا كل شيء صحيح
  // =========================
  print("🎉 User Registered Successfully!");
  print("Username: $username");
  print("Email: $email");
  print("Age: $age");

}