import 'package:flutter/material.dart';
import 'package:riverpod_example/examples/user_detail_app/screen/user_data_screen.dart';

class UserListScreen extends StatelessWidget {
  const UserListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Users List')),
      body: ListView.builder(
        itemCount: 6,
        itemBuilder: (_, index) {
          final userId = index + 1;
          return ListTile(
            title: Text('User ID: $userId'),
            trailing: const Icon(Icons.arrow_forward_ios),
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(builder: (_) => UserDetailScreen(userId: userId)),
            ),
          );
        },
      ),
    );
  }
}
