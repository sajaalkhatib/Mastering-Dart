/*
When using implements:
✔ Must override ALL methods
✔ No inherited implementation
✔ Only structure is taken
*/

class Payment {

  void pay() {
    print("Processing payment");
  }
}

class CreditCard implements Payment {

  @override
  void pay() {
    print("Paying with Credit Card");
  }
}

class Cash implements Payment {

  @override
  void pay() {
    print("Paying with Cash");
  }
}

void main() {

  CreditCard c = CreditCard();
  c.pay();

  Cash cash = Cash();
  cash.pay();
}

//ما بتقدر تستخدم super مع Interface لأن الـ Interface ما بيوّرث كود، فقط يفرض شكل (contract)

// ✔ super = موجود فقط مع inheritance (extends)
// ❌ interface = لا يوجد فيه super لأنه لا يوجد inheritance حقيقي

