import 'package:flutter_riverpod/flutter_riverpod.dart';

final multiSlider = StateProvider<AppState>((ref){
  return AppState(radicalSlider: 0.5,
      linearSlider: 0.5, 
      sweepSlider: 0.5
  );
});


class AppState{
  final double linearSlider;
  final double radicalSlider;
  final double sweepSlider;
  const AppState({required this.radicalSlider, required this.linearSlider, required this.sweepSlider,});

  AppState copyWith({double? linearSlider, double? radicalSlider, double? sweepSlider}){
    return AppState(
        radicalSlider: radicalSlider ?? this.radicalSlider,
        linearSlider: linearSlider ?? this.linearSlider, 
        sweepSlider: sweepSlider ?? this.sweepSlider);
  }
}