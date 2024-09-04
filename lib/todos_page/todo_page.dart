import 'package:flutter/material.dart';
import 'package:futter_taav_practice/todos_page/widgets/todo_creator.dart';

import 'widgets/items.dart';

class ToDoPage extends StatefulWidget {
  const ToDoPage({super.key});

  @override
  State<ToDoPage> createState() => _ToDoPageState();
}

class _ToDoPageState extends State<ToDoPage> {
  final List<String> todo = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _body(),
    );
  }

  Widget _body() {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 8),
      child: Column(
        children: [
          TodoCreator(onSubmit: (value) {
            setState(() {
              todo.add(value);
            });
          }),
          Expanded(
            child: Items(todo: todo),
          ),
        ],
      ),
    );
  }
}
