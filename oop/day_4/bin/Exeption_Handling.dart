import 'dart:async';
import 'dart:io';

void main() {
  // 1) FormatException - خطأ تحويل نص لرقم
  try {
    int num = int.parse("abc"); // هذا نص غير صالح للتحويل
    print(num);
  } catch (e) {
    print("FormatException caught: $e");
  }

  // 2) IntegerDivisionByZeroException - قسمة على صفر
  try {
    int result = 10 ~/ 0; // خطأ لأن القسمة على صفر غير مسموحة
    print(result);
  } catch (e) {
    print("Division by zero error: $e");
  }

  // 3) TimeoutException - تأخير زائد عن الحد
  try {
    Future.delayed(Duration(seconds: 3))
        .timeout(Duration(seconds: 1));
  } catch (e) {
    print("TimeoutException caught: $e");
  }

  // 4) IOException - مشكلة قراءة ملف
  try {
    File file = File("not_found.txt"); // ملف غير موجود
    String content = file.readAsStringSync();
    print(content);
  } catch (e) {
    print("IOException caught: $e");
  }

  // 5) UnsupportedError - عملية غير مدعومة
  try {
    List list = List.unmodifiable([1, 2, 3]);
    list.add(4); // محاولة تعديل ليست مسموحة
  } catch (e) {
    print("UnsupportedError caught: $e");
  }

  print("Program finished safely ✔");
}


//summary 
//Exception handling in Dart is really important to make apps more stable.
//Each type has a clear purpose like FormatException for invalid parsing and TimeoutException for slow operations.
