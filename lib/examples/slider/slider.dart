import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_example/examples/slider/provider/slider_provider.dart';

class SliderWidget extends ConsumerWidget {
  const SliderWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    if(kDebugMode){
      debugPrint('widget rebuild');
    }
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue.shade900,
        title: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(Icons.countertops),
            SizedBox(width: 11),
            Text('Slider Example'),
          ],
        ),
      ),

      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Consumer(
            builder: (context, ref, child){
              final opacity = ref.watch(sliderProvider);
               return Container(
                width: 200,
                height: 200,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(opacity * 100),
                  gradient: RadialGradient(colors: [
                    Colors.red.withOpacity(opacity / 2 ),
                    Colors.orange.withOpacity(opacity / 1),
                    Colors.pink.withOpacity(opacity / 1.1),
                    Colors.deepPurple.withOpacity(opacity / 1.5),
                    Colors.red.withOpacity(opacity / 2.1),
                    Colors.orange.withOpacity(opacity / 3.1),
                  ])
                ),
              );
            },
          ),
          SizedBox(height: 12,),
          Consumer(
            builder: (context, ref, child){
              final sliderValue = ref.watch(sliderProvider);
              return Slider(
                activeColor: Colors.blue.shade900,
                thumbColor: Colors.blue.shade900,
                  secondaryActiveColor: Colors.blue,
                  value: sliderValue, onChanged: (value){
                ref.read(sliderProvider.notifier).state = value;
              });
            },
          ),

        ],
      ),
    );
  }
}
