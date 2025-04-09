import 'package:flutter/material.dart';

class TodoTile extends StatelessWidget {
  final String task;
  const TodoTile({super.key, required this.task});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 18, horizontal: 16),
      decoration: BoxDecoration(
        color: Color(0xff1d1b20),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Text(
        task,
        style: Theme.of(context).textTheme.titleMedium,
      ),
    );
  }
}
