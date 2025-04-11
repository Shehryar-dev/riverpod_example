import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../provider/time_provider.dart';

class TimeScreen extends ConsumerWidget {
  const TimeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final timeAsync = ref.watch(timeProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Live Time Stream'),
      ),
      body: Center(
        child: timeAsync.when(
          data: (time) => Text(
            time.toLocal().toString(),
            style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          loading: () => const CircularProgressIndicator(),
          error: (e, _) => Text('Error: $e'),
        ),
      ),
    );
  }
}
