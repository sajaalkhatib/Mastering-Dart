void main() {

  for (int i = 1; i <= 10; i++) {

    // 🟡 نتخطى الرقم 3
    if (i == 3) {
      print("Skipping 3 ⏭️");
      continue;
    }

    // 🔴 نوقف عند الرقم 7
    if (i == 7) {
      print("Stopped at 7 🚫");
      break;
    }

    print("Number: $i");
  }

}