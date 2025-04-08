import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_example/examples/multiple_states/provider/multi_states_provider.dart';

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
            RadicalGradienContainer(),
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

class LinearGradientContainer extends StatelessWidget {
  const LinearGradientContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Consumer(builder:(context, ref, child){
      final op = ref.watch(multiSlider.select((state)=> state.linearSlider));
      if(kDebugMode){
        debugPrint('linear container');
      }
      return Container(
        width: 150,
        height: 150,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(op * 100),
            gradient: LinearGradient(
                tileMode: TileMode.mirror,
                colors: [
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

class RadicalGradienContainer extends StatelessWidget {
  const RadicalGradienContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Consumer(builder:(context, ref, child){
      final op = ref.watch(multiSlider.select((state)=> state.radicalSlider));
      if(kDebugMode){
        debugPrint('Radical container');
      }
      return Container(
        width: 150,
        height: 150,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(op * 100),
            gradient: RadialGradient(colors: [
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
