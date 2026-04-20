void main() {

  // var يعني متغير بدون تحديد نوع صريح
  // Dart بتستنتج النوع تلقائياً من القيمة
  var name = "Saja"; // هنا Dart فهمت أنه String
  var age= "24";
  // طباعة القيمة
  print(name);
  print("$name");

  // String Interpolation
  // نستخدم $ لعرض قيمة المتغير داخل النص
  print("My Name: $name Age: $age");
  print("My Name: $name Age:"+age);// بتزبط فقط اذا كان age string
  print("My Name: " + name + " Age: " + age.toString());//اذا كان رقم وبدي احوله ل string
  //  مهم:
  // بعد ما تحدد النوع لأول مرة، ما بتقدر تغيّره
  // مثال:
  // name = 20;  هذا خطأ لأن name صار String وليس int

//////////////////////////////////////////


 // String: لتخزين نص (اسم الشخص)
  String fullname = "Saja";

  // int: لتخزين رقم صحيح (العمر)
  int Age = 22;

  // double: لتخزين رقم عشري (الطول)
  double height = 165.5;

  // bool: لتخزين قيمة منطقية (صح أو خطأ)
  bool isStudent = true;

  // const: قيمة ثابتة لا تتغير أبداً
  const pi = 3.14; //immutable

  // طباعة القيم باستخدام String Interpolation
  print("Name: $fullname");
  print("Age: $Age");
  print("Height: $height");
  print("Student: $isStudent");
  print("Pi: $pi");



  // ✅ Case sensitive (a غير A)
  var a = 10;
  var A = 20;

  // ✅ مسموح حروف وأرقام
  var name1 = "Saja";

  // ❌ ممنوع يبدأ برقم (خطأ لو فعلناه)
  // var 1name = "Ali";

  // ❌ كلمات محجوزة (Keywords) غير مسموح استخدامها كاسم متغير
  // var int = 5;

  // ❌ ممنوع وجود مسافات
  // var user name = "Saja";

  // ✅ الصحيح بدون مسافات (camelCase)
  var userName = "Saja";

  // ✅ مسموح استخدام underscore (_)
  var user_name = "Ali";

  // ✅ مسموح استخدام $
  var $name = "Test";

  // الطباعة للتجربة
  print(a);
  print(A);
  print(name1);
  print(userName);
  print(user_name);
  print($name);
}