📘 Mastering Dart
<p align="center"> <img src="https://img.shields.io/badge/Dart-Language-blue?style=for-the-badge&logo=dart" /> <img src="https://img.shields.io/badge/OOP-Practice-green?style=for-the-badge" /> <img src="https://img.shields.io/badge/Async-Programming-orange?style=for-the-badge" /> <img src="https://img.shields.io/badge/Streams-Advanced-purple?style=for-the-badge" /> </p>
🚀 About The Project

This repository documents my journey in mastering the Dart programming language, starting from fundamentals to advanced concepts. It focuses on writing clean, structured, and practical code to build a strong programming foundation for Flutter development.

🧠 What You'll Learn
Dart Fundamentals (Variables, Data Types, Functions, Loops)
Object-Oriented Programming (OOP)
Inheritance, Polymorphism, Encapsulation
Generics (Reusable & Type-Safe Code)
Asynchronous Programming (Future, async, await)
Streams (Stream, async*, yield)
Real-world coding exercises
💻 Code Example
void main() async {
  print("App Started");

  await for (var value in countStream()) {
    print("Value: $value");
  }

  print("App Finished");
}

Stream<int> countStream() async* {
  for (int i = 1; i <= 5; i++) {
    await Future.delayed(Duration(seconds: 1));
    yield i;
  }
}
🎯 Goals
Build strong Dart fundamentals
Improve problem-solving skills
Prepare for Flutter development
Write clean and scalable code
⚙️ Tech Stack
<p align="center"> <img src="https://img.shields.io/badge/Dart-Programming-blue?style=flat-square&logo=dart" /> <img src="https://img.shields.io/badge/OOP-Concepts-yellow?style=flat-square" /> <img src="https://img.shields.io/badge/Practice-Projects-success?style=flat-square" /> </p>
📚 Resources

Learn Dart from official and trusted resources:
👉 https://dart.dev

👉 https://dart-tutorial.com
