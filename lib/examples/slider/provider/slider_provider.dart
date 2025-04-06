import 'package:flutter_riverpod/flutter_riverpod.dart';

final sliderProvider = StateProvider<double>((ref){
  return 0.5;
});