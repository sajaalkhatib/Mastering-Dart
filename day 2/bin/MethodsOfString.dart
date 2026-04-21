void main() {

  // 🔹 تعريف متغير من نوع String
  String name = "Saja Alkhatib"; // المسافة بين الاسمين تُحسب ضمن الطول

  // 🔹 حساب طول النص (عدد الأحرف)
  print(name.length); // الناتج: 13

  // 🔹 تحويل النص إلى أحرف صغيرة
  print(name.toLowerCase()); // saja alkhatib

  // 🔹 تحويل النص إلى أحرف كبيرة
  print(name.toUpperCase()); // SAJA ALKHATIB

  // 🔹 حذف الفراغات من البداية والنهاية
  String text = "   Hello World   ";
  print(text.trim()); // Hello World

  // 🔹 مقارنة نصين 
  print(name.compareTo("Saja")); 
  // إذا 0 = متساويين
  // إذا > 0 = النص الأول أكبر
  // إذا < 0 = النص الثاني أكبر
  // اذا اعطاني 1 بكون المتغير يلي بين الاقواس اكبر من هذاك

  // 🔹 استبدال جزء من النص
  print(name.replaceAll("Saja", "Lara")); // Lara Alkhatib

  // 🔹 تقسيم النص إلى قائمة
  List parts = name.split(" ");
  print(parts); // [Saja, Alkhatib]

  // 🔹 تحويل أي قيمة إلى String
  int number = 100;
  print(number.toString()); // "100"

  // 🔹 استخراج جزء من النص
  print(name.substring(0, 4)); // Saja

  // 🔹 جلب كود الحرف (UTF-16)
  print(name.codeUnitAt(0)); // كود حرف S

}