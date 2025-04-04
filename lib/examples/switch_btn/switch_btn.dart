import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_example/examples/switch_btn/provider/switch_provider.dart';

class SwitchBtn extends StatelessWidget {
  const SwitchBtn({super.key});

  @override
  Widget build(BuildContext context) {
    if(kDebugMode){
      debugPrint('main widget build');
    }
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue.shade900,
        title: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(Icons.switch_left),
            SizedBox(width: 11),
            Text('Switch Button'),
          ],
        ),
      ),
      body: Center(
        child: Consumer(builder: (context, ref, child)=> Switch(
            activeColor: Colors.blue,
            value: ref.watch(switchProvider), onChanged: (value){
          if(kDebugMode){
            debugPrint('only switch widget build ${ref.watch(switchProvider)}');
          }
          ref.read(switchProvider.notifier).state = value;
        })),
      ),
    );
  }
}
