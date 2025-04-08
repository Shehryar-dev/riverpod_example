
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../provider/multi_states_provider.dart';

class SweepGradientContainer extends StatelessWidget {
  const SweepGradientContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Consumer(builder:(context, ref, child){
      final op = ref.watch(multiSlider.select((state)=> state.sweepSlider));
      if(kDebugMode){
        debugPrint('Sweep container');
      }
      return Container(
        width: 150,
        height: 150,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(op * 100),
            gradient: SweepGradient(colors: [
              Colors.red.withOpacity(op / 2 ),
              Colors.orange.withOpacity(op / 1),
              Colors.pink.withOpacity(op / 1.1),
              Colors.deepPurple.withOpacity(op / 1.5),
              Colors.red.withOpacity(op / 2.1),
              Colors.orange.withOpacity(op / 3.1),
            ])
        ),
      );
    }
    );
  }
}