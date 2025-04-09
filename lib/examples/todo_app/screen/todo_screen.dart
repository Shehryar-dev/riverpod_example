import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_example/examples/todo_app/provider/todo_provider.dart';
import 'package:riverpod_example/examples/todo_app/screen/edit_todo_screen.dart';
import 'package:riverpod_example/examples/todo_app/widget/todo_tile.dart';

class TodoScreen extends ConsumerWidget {
  const TodoScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final todos = ref.watch(todoListProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Riverpod Todo'),
        backgroundColor: Colors.indigo.shade900,
      ),
      body: todos.isEmpty
          ? const Center(child: Text('No tasks yet.'))
          : ListView.separated(
        padding: const EdgeInsets.all(16),
        itemCount: todos.length,
        separatorBuilder: (_, __) => const SizedBox(height: 10),
        itemBuilder: (context, index) {
          final todo = todos[index];
          return GestureDetector(
            onLongPress: () {
              ref.read(todoListProvider.notifier).deleteTodo(todo.id);
            },
            onTap: () async {
              final result = await Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (_) => AddEditScreen(todo: todo),
                ),
              );

              if (result != null && result is String) {
                ref.read(todoListProvider.notifier).editTodo(todo.id, result);
              }
            },
            child: TodoTile(task: todo.name),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.indigo,
        onPressed: () async {
          final result = await Navigator.push(
            context,
            MaterialPageRoute(builder: (_) => const AddEditScreen()),
          );

          if (result != null && result is String) {
            ref.read(todoListProvider.notifier).addTodo(result);
          }
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
