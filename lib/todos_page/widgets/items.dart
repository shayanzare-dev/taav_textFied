import 'package:flutter/material.dart';

class Items extends StatelessWidget {
  const Items({super.key, required this.todo});

  final List<String> todo;

  @override
  Widget build(BuildContext context) {
    return todo.isNotEmpty
        ? ListView.separated(
            itemBuilder: (_, index) => _itemBuilder(index),
            separatorBuilder: (context, index) => const Divider(),
            itemCount: todo.length)
        : const Center(
            child: Text(
              'empty todo',
              style: TextStyle(fontSize: 30),
            ),
          );
  }

  Widget _itemBuilder(int index) => Row(
        children: [
          Expanded(child: Text(todo[index])),
          //    DeleteItem(onDelete: );
        ],
      );
}
