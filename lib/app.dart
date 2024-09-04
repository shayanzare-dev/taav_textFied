
import 'package:flutter/material.dart';

import 'todos_page/todo_page.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: ToDoPage(),);
  }
}
