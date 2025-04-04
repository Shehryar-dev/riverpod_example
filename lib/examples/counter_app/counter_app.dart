import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_example/examples/counter_app/provider/counter_provider.dart';

class CounterApp extends ConsumerWidget {
  const CounterApp({super.key});

  @override
  Widget build(BuildContext context,WidgetRef ref) {
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
          return Text(count.toString(), style: Theme.of(context).textTheme.titleLarge,);
        }),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
      floatingActionButtonAnimator: FloatingActionButtonAnimator.scaling,
      floatingActionButton: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          FloatingActionButton(onPressed: (){
            ref.read(counterProvider.notifier).state += 1;
          },
            child: Icon(Icons.add),
          ),
          SizedBox(height: 20,),
          FloatingActionButton(onPressed: (){
            ref.read(counterProvider.notifier).state -= 1;
          },
          child: Icon(CupertinoIcons.minus),
          ),
        ],
      ),
    );
  }
}
