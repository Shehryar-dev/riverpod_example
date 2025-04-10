



import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_example/examples/favourite_app/provider/favourite_stats.dart';


final favouriteProvider = StateNotifierProvider<FavouriteNotifier, FavouriteStats>((ref){
  return FavouriteNotifier();
});

class FavouriteNotifier extends StateNotifier<FavouriteStats>{
   FavouriteNotifier() : super(FavouriteStats(allItems: [], filteredItem: [], search: ''));

}