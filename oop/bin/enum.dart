// Enum (Enumeration) هو نوع بيانات خاص يُستخدم لتحديد مجموعة ثابتة من القيم المسموحة فقط.

// 👉 يعني:

// بدل ما تكتب قيم عشوائية، بتحدد خيارات محددة مسبقًا


enum Direction {
  north,
  south,
  east,
  west
}

void move(Direction dir) {

  switch (dir) {
    case Direction.north:
      print("Move Up");
      break;

    case Direction.south:
      print("Move Down");
      break;

    case Direction.east:
      print("Move Right");
      break;

    case Direction.west:
      print("Move Left");
      break;
  }
}

void main() {
  move(Direction.east);
}

// متى تستخدم Enum؟

// ✔ حالات النظام (loading / success / error)
// ✔ حالات الطلبات (pending / delivered)
// ✔ الاتجاهات (north / south)
// ✔ صلاحيات المستخدم (admin / user)

