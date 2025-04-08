
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../provider/multi_states_provider.dart';


class SweepGradientSlider extends StatelessWidget {
  const SweepGradientSlider({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Consumer(builder: (context, ref, child){
      final op = ref.watch(multiSlider.select((state)=> state.sweepSlider));
      // if(kDebugMode){
      //   debugPrint('Sweep slider');
      // }
      return  Slider(
          activeColor: Colors.blue.shade900,
          thumbColor: Colors.blue.shade900,
          secondaryActiveColor: Colors.blue,
          value: op, onChanged: (value){
        final stateProvider = ref.read(multiSlider.notifier);
        stateProvider.state = stateProvider.state.copyWith(sweepSlider: value);
      });
    });
  }
}

