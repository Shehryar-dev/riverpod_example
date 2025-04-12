import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../provider/user_detail_provider.dart';

class UserDetailScreen extends ConsumerWidget {
  final int userId;
  const UserDetailScreen({super.key, required this.userId});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final userAsync = ref.watch(userProviderFamily(userId));

    return Scaffold(
      appBar: AppBar(title: Text('User $userId')),
      body: Center(
        child: userAsync.when(
          data: (user) => Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(user.name, style: const TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
              const SizedBox(height: 8),
              Text(user.email, style: const TextStyle(fontSize: 18)),
            ],
          ),
          loading: () => const CircularProgressIndicator(),
          error: (e, _) => Text('Error: $e'),
        ),
      ),
    );
  }
}
