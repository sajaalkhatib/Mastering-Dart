// Stream in Dart:
//
// - A way to handle data that arrives over time (asynchronously).
// - Instead of returning a single value like Future,
//   it emits multiple values (event after event).
// - Each value is called an "event".
// - Suitable for real-time or continuously changing data.
// - Common use cases:
//   • Live updates
//   • User input
//   • Notifications
//   • Chat applications


void main() {
  print("App Started");

  // 🔹 الاشتراك في الـ Stream
  numberStream().listen(
    (value) {
      // 🟢 يتم استدعاء هذا عند وصول كل قيمة (Data Event)
      print("Received: $value");
    },
    onError: (error) {
      // 🔴 في حال حدوث خطأ داخل الـ Stream
      print("Error: $error");
    },
    onDone: () {
      // 🔵 عند انتهاء الـ Stream (Done Event)
      print("Stream Finished");
    },
  );

  print("App Still Running...");
}

// ======================================================
// 🧠 Stream Explanation (Technical)
// ======================================================
//
// - Stream emits multiple asynchronous events over time
// - Each event can be:
//    • Data event (value)
//    • Error event
//    • Done event
//
// - async* → turns function into Stream generator
// - yield → sends a value into the Stream
// - Future.delayed → simulates async operation (API, delay)
// ======================================================

Stream<int> numberStream() async* {
  for (int i = 1; i <= 5; i++) {
    await Future.delayed(Duration(seconds: 1)); // ⏳ simulate delay

    // 🟢 إرسال قيمة إلى الـ Stream (Event)
    yield i;

    // مثال على خطأ (اختياري للتجربة)
    if (i == 4) {
      // throw Exception("Something went wrong!");
    }
  }
}

