import 'package:flutter/material.dart';

class TodoCreator extends StatelessWidget {
  TodoCreator({super.key, required this.onSubmit});

  final void Function(String) onSubmit;

  final TextEditingController textEditingController = TextEditingController();

  final GlobalKey _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        ElevatedButton(onPressed: _onSubmit, child: const Text('submit')),
        Form(
          /// question
          key: _formKey,
          child: Expanded(
            child: _textForms(),
          ),
        ),
      ],
    );
  }

  Widget _textForms() {
    return Column(
      children: [
        TextFormField(
          keyboardType: TextInputType.number,
          decoration: const InputDecoration(hintText: 'title'),
        ),
        TextFormField(
          decoration: const InputDecoration(hintText: 'description'),
          controller: textEditingController,
          validator: (value) {
            
          },
        ),
      ],
    );
  }

  void _onSubmit() {
    onSubmit(textEditingController.text);
    textEditingController.clear();
  }
}
