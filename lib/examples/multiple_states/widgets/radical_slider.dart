
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../provider/multi_states_provider.dart';


class RadicalGradientSlider extends StatelessWidget {
  const RadicalGradientSlider({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Consumer(builder: (context, ref, child){
      final op = ref.watch(multiSlider.select((state)=> state.radicalSlider));
      // if(kDebugMode){
      //   debugPrint('Radical slider');
      // }
      return  Slider(
          activeColor: Colors.blue.shade900,
          thumbColor: Colors.blue.shade900,
          secondaryActiveColor: Colors.blue,
          value: op, onChanged: (value){
        final stateProvider = ref.read(multiSlider.notifier);
        stateProvider.state = stateProvider.state.copyWith(radicalSlider: value);
      });
    });
  }
}
