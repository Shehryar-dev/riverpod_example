import 'package:flutter/material.dart';
import 'package:riverpod_example/examples/todo_app/widget/todo_app_tile.dart';

class TodoAppScreen extends StatelessWidget {
  const TodoAppScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final List<String> dummyTodos = [
      'Finish Flutter homework',
      'Practice Riverpod example',
      'Push code on GitHub',
      'Read 10 pages of book',
    ];

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.indigo.shade900,
        title: const Text('📝 Todo App'),
        centerTitle: true,
      ),

      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView.separated(
          itemCount: dummyTodos.length,
          separatorBuilder: (_, __) => const SizedBox(height: 12),
          itemBuilder: (context, index) {
            return TodoTile(task: dummyTodos[index]);
          },
        ),
      ),

      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.indigo,
        onPressed: () {
          // TODO: Add new task (Riverpod logic later)
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: Text('Add Task button tapped!')),
          );
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
