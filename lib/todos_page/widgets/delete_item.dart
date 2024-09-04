import 'package:flutter/material.dart';

class DeleteItem extends StatelessWidget {
   final void Function(String) onDelete;
  //final int index;

  const DeleteItem({super.key, required this.onDelete});

  @override
  Widget build(BuildContext context) {
    return IconButton(onPressed: () {
      // todo
      //onDelete(sd);
    }, icon: Icon(Icons.clear));
  }
}
