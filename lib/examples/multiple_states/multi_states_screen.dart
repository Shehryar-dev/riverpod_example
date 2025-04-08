import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_example/examples/multiple_states/widgets/linear_container.dart';
import 'package:riverpod_example/examples/multiple_states/widgets/linear_slider.dart';
import 'package:riverpod_example/examples/multiple_states/widgets/radical_container.dart';
import 'package:riverpod_example/examples/multiple_states/widgets/radical_slider.dart';
import 'package:riverpod_example/examples/multiple_states/widgets/sweep_container.dart';
import 'package:riverpod_example/examples/multiple_states/widgets/sweep_slider.dart';

class MultipleStateExample extends ConsumerWidget {
  const MultipleStateExample({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    if(kDebugMode){
      debugPrint('scaffold build');
    }
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue.shade900,
        title: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(Icons.countertops),
            SizedBox(width: 11),
            Text('Multi States Riverpod'),
          ],
        ),
      ),
      
      
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: 12,),
            Text('Radial Gradient', style: Theme.of(context).textTheme.titleLarge,),
            SizedBox(height: 12 / 2,),
            RadicalGradientContainer(),
            SizedBox(height: 12,),
            RadicalGradientSlider(),

            SizedBox(height: 12,),
            Text('Sweep Gradient', style: Theme.of(context).textTheme.titleLarge,),
            SizedBox(height: 12 / 2,),
            SweepGradientContainer(),
            SizedBox(height: 12,),
            SweepGradientSlider(),

            SizedBox(height: 12,),
            Text('Linear Gradient', style: Theme.of(context).textTheme.titleLarge,),
            SizedBox(height: 12 / 2,),
            LinearGradientContainer(),
            SizedBox(height: 12,),
            LinearGradientSlider(),
          ],
        ),
      ),
    );
  }
}

