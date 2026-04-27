📘 Mastering Dart
<p align="center"> <img src="https://img.shields.io/badge/Dart-Language-blue?style=for-the-badge&logo=dart" /> <img src="https://img.shields.io/badge/OOP-Practice-green?style=for-the-badge" /> <img src="https://img.shields.io/badge/Async-Programming-orange?style=for-the-badge" /> <img src="https://img.shields.io/badge/Streams-Advanced-purple?style=for-the-badge" /> </p>
🚀 About The Project

This repository documents my journey in learning and mastering the Dart programming language, from basic concepts to advanced topics, with clean examples and practical exercises.

🧠 Covered Topics
Dart Basics (Variables, Data Types, Functions, Loops)
Object-Oriented Programming (OOP)
Inheritance, Polymorphism, Encapsulation
Generics (Class & Function)
Asynchronous Programming (Future, async, await)
Streams (Stream, async*, yield)
Practical coding exercises
💻 Example Code
void main() async {
  print("Start");

  await for (var value in countStream()) {
    print("Value: $value");
  }

  print("End");
}

Stream<int> countStream() async* {
  for (int i = 1; i <= 5; i++) {
    await Future.delayed(Duration(seconds: 1));
    yield i;
  }
}
🎯 Goals
Strengthen Dart fundamentals
Build strong programming logic
Prepare for Flutter development
Practice real-world coding concepts
⚙️ Tech Stack
<p align="center"> <img src="https://img.shields.io/badge/Dart-Programming-blue?style=flat-square&logo=dart" /> <img src="https://img.shields.io/badge/Practice-Learning-success?style=flat-square" /> <img src="https://img.shields.io/badge/OOP-Concepts-yellow?style=flat-square" /> </p>
👩‍💻 Author

Saja AlKhatib
💙 Aspiring Flutter & Dart Developer
🚀 Always learning, always building

<p align="center"> ⭐ If you find this repository helpful, don’t forget to star it! </p>
<h1>https://dart-tutorial.com</h1>
