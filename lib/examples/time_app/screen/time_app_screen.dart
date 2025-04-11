import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../provider/time_provider.dart';

class TimeScreen extends ConsumerWidget {
  const TimeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final timeAsync = ref.watch(timeProvider);

    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [Color(0xFF0F2027), Color(0xFF203A43), Color(0xFF2C5364)],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: Center(
          child: timeAsync.when(
            data: (time) => Container(
              padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
              decoration: BoxDecoration(
                color: Colors.white.withOpacity(0.15),
                borderRadius: BorderRadius.circular(20),
                border: Border.all(color: Colors.white30),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.2),
                    blurRadius: 10,
                    offset: const Offset(0, 5),
                  ),
                ],
              ),
              child: Text(
                _formatTime(time),
                style: const TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.w600,
                  color: Colors.white,
                  letterSpacing: 1.5,
                ),
              ),
            ),
            loading: () => const CircularProgressIndicator(color: Colors.white),
            error: (e, _) => Text('Error: $e', style: const TextStyle(color: Colors.white)),
          ),
        ),
      ),
    );
  }

  String _formatTime(DateTime time) {
    return "${_twoDigits(time.hour)}:${_twoDigits(time.minute)}:${_twoDigits(time.second)}";
  }

  String _twoDigits(int n) => n.toString().padLeft(2, '0');
}
