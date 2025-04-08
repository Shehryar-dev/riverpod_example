
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../provider/multi_states_provider.dart';

class LinearGradientSlider extends StatelessWidget {
  const LinearGradientSlider({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Consumer(builder: (context, ref, child){
      final op = ref.watch(multiSlider.select((state)=> state.linearSlider));
      // if(kDebugMode){
      //   debugPrint('linear slider');
      // }
      return  Slider(
          activeColor: Colors.blue.shade900,
          thumbColor: Colors.blue.shade900,
          secondaryActiveColor: Colors.blue,
          value: op, onChanged: (value){
        final stateProvider = ref.read(multiSlider.notifier);
        stateProvider.state = stateProvider.state.copyWith(linearSlider: value);
      });
    });
  }
}

