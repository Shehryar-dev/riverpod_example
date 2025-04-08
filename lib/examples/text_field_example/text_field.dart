import 'package:flutter/material.dart';

class TextFieldWidget extends StatelessWidget {
  const TextFieldWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue.shade900,
        title: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(Icons.switch_left),
            SizedBox(width: 11),
            Text('Stats Notifier Provider'),
          ],
        ),
      ),

    );
  }
}
