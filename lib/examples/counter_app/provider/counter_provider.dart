
import 'package:flutter_riverpod/flutter_riverpod.dart';

final counterProvider  = StateProvider<int>((ref){
   return 0;
});