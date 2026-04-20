void main() {

  // ========================
  // Type Conversion (تحويل البيانات)
  // ========================

  // String ➜ int 
  String numberText = "100";
  int number = int.parse(numberText);
  print("String to int: $number");

  // String ➜ double
  String decimalText = "10.5";
  double decimal = double.parse(decimalText);
  print("String to double: $decimal");

  // int ➜ String
  int age = 22;
  String ageText = age.toString();
  print("int to String: $ageText");

  // double ➜ int (يحذف الكسور)
  double price = 99.99;
  int priceInt = price.toInt();
  print("double to int: $priceInt");
  //رح تطبع عند الداتا تايب
 print("data type: ${priceInt.runtimeType}");


 // From String to int     int.parse()
// From String to double   double.parse()
// From int to double      toDouble()
// From double to int      toInt()
// From double or int to String   toString()
}