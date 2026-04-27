void main() async {
  print("App started");

  // انتظار تحميل المستخدم
  String user = await getUser();
  print(user);

  // انتظار تحميل البيانات
  String posts = await getPosts();
  print(posts);

  print("App finished");
}

// 🔹 محاكاة API لجلب مستخدم
Future<String> getUser() async {
  print("Loading user...");

  await Future.delayed(Duration(seconds: 2));

  return "User: Saja";
}

// 🔹 محاكاة API لجلب بوستات
Future<String> getPosts() async {
  print("Loading posts...");

  await Future.delayed(Duration(seconds: 2));

  return "Posts loaded successfully";
}

// Asynchronous programming in Dart lets long tasks 
// like API calls run without blocking the main program. 
// It uses Future, async, and await to wait for results
//  while the program keeps running other code.
//   When the task is finished, the result is returned, 
//   making the app faster and more responsive.