



import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_example/examples/favourite_app/provider/favourite_stats.dart';

import '../model/item_model.dart';


final favouriteProvider = StateNotifierProvider<FavouriteNotifier, FavouriteStats>((ref){
  return FavouriteNotifier();
});

class FavouriteNotifier extends StateNotifier<FavouriteStats>{
   FavouriteNotifier() : super(FavouriteStats(allItems: [], filteredItem: [], search: ''));


   void addItem(){
     state = state.copyWith(allItems: _itemData.toList(), filteredItem: _itemData.toList());
   }
}


List<Item> _itemData = [
  Item(id: DateTime.now().millisecondsSinceEpoch.toString(), name: 'MacBook', isFavourite: false),
  Item(id: DateTime.now().add(Duration(seconds: 1)).millisecondsSinceEpoch.toString(), name: 'iPhone', isFavourite: false),
  Item(id: DateTime.now().add(Duration(seconds: 2)).millisecondsSinceEpoch.toString(), name: 'AirPods', isFavourite: false),
  Item(id: DateTime.now().add(Duration(seconds: 3)).millisecondsSinceEpoch.toString(), name: 'Galaxy Watch', isFavourite: false),
  Item(id: DateTime.now().add(Duration(seconds: 4)).millisecondsSinceEpoch.toString(), name: 'Dell XPS', isFavourite: false),
  Item(id: DateTime.now().add(Duration(seconds: 5)).millisecondsSinceEpoch.toString(), name: 'Surface Pro', isFavourite: false),
  Item(id: DateTime.now().add(Duration(seconds: 6)).millisecondsSinceEpoch.toString(), name: 'Pixel 7', isFavourite: false),
  Item(id: DateTime.now().add(Duration(seconds: 7)).millisecondsSinceEpoch.toString(), name: 'Lenovo Yoga', isFavourite: false),
  Item(id: DateTime.now().add(Duration(seconds: 8)).millisecondsSinceEpoch.toString(), name: 'iPad Pro', isFavourite: false),
  Item(id: DateTime.now().add(Duration(seconds: 9)).millisecondsSinceEpoch.toString(), name: 'OnePlus 12', isFavourite: false),
];
