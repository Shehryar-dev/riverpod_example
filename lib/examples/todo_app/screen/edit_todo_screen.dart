import 'package:flutter/material.dart';

import '../model/todo_model.dart';

class AddEditScreen extends StatefulWidget {
  final Todo? todo;
  const AddEditScreen({super.key, this.todo});

  @override
  State<AddEditScreen> createState() => _AddEditScreenState();
}

class _AddEditScreenState extends State<AddEditScreen> {
  late TextEditingController controller;

  @override
  void initState() {
    controller = TextEditingController(text: widget.todo?.name ?? '');
    super.initState();
  }

  void _save() {
    final text = controller.text.trim();
    if (text.isNotEmpty) {
      Navigator.pop(context, text);
    }
  }

  @override
  Widget build(BuildContext context) {
    final isEdit = widget.todo != null;

    return Scaffold(
      appBar: AppBar(
        title: Text(isEdit ? 'Edit Todo' : 'Add Todo'),
        backgroundColor: Colors.indigo.shade900,
        actions: [
          IconButton(
            icon: const Icon(Icons.save),
            onPressed: _save,
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: TextField(
          controller: controller,
          autofocus: true,
          decoration: const InputDecoration(
            border: OutlineInputBorder(),
            hintText: 'Enter task...',
          ),
        ),
      ),
    );
  }
}
