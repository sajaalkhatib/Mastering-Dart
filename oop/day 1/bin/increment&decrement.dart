void main() {
  //  Pre Increment (++var)
  print(" Pre Increment (++var)");

  int a = 5;

  // يتم زيادة a أولاً ثم تخزينها في b
  int b = ++a;

  print("a = $a"); // a أصبحت 6 لأن الزيادة تمت أولاً
  print("b = $b"); // b = 6 (القيمة الجديدة بعد الزيادة)

  // --------------------------------------------------

  //  Post Increment (var++)
  print("\n Post Increment (var++)");

  int c = 5;

  // يتم استخدام قيمة c أولاً ثم زيادتها
  int d = c++;

  print("c = $c"); // c أصبحت 6 بعد التنفيذ
  print("d = $d"); // d = 5 (القيمة القديمة قبل الزيادة)

  // --------------------------------------------------

  //  Pre Decrement (--var)
  print("\n Pre Decrement (--var)");

  int e = 5;

  // يتم إنقاص e أولاً ثم تخزينها في f
  int f = --e;

  print("e = $e"); // e أصبحت 4
  print("f = $f"); // f = 4 (القيمة بعد النقصان)

  // --------------------------------------------------

  //  Post Decrement (var--)
  print("\n Post Decrement (var--)");

  int g = 5;

  // يتم استخدام قيمة g أولاً ثم إنقاصها
  int h = g--;

  print("g = $g"); // g أصبحت 4 بعد التنفيذ
  print("h = $h"); // h = 5 (القيمة القديمة قبل النقصان)
}