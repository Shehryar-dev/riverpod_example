import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_example/examples/counter_app/provider/counter_provider.dart';

class CounterApp extends ConsumerWidget {
  const CounterApp({super.key});

  @override
  Widget build(BuildContext context,WidgetRef ref) {
    if(kDebugMode){
      debugPrint('main widget build');
    }
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue.shade900,
        title: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(Icons.countertops),
            SizedBox(width: 11),
            Text('Counter App'),
          ],
        ),
      ),

      body: Center(
        child: Consumer(builder: (context, ref, child){
          final count = ref.watch(counterProvider);
          debugPrint('consumer build');
          return Text(count.toString(), style: Theme.of(context).textTheme.titleLarge,);
        }),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
      floatingActionButtonAnimator: FloatingActionButtonAnimator.scaling,
      floatingActionButton: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          FloatingActionButton(
            heroTag: 'addBtn',
            onPressed: (){
            ref.read(counterProvider.notifier).state += 1;
          },
            child: Icon(Icons.add),
          ),
          SizedBox(height: 20,),
          FloatingActionButton(
            heroTag: 'minusBtn',
            onPressed: (){
              final count = ref.watch(counterProvider);
              if(count > 0){
                ref.read(counterProvider.notifier).state -= 1;
              }else{
                ref.read(counterProvider.notifier).state -= 0;
              }
          },
          child: Icon(CupertinoIcons.minus),
          ),
        ],
      ),
    );
  }
}
