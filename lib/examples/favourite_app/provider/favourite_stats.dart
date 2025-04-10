
import 'package:riverpod_example/examples/favourite_app/model/item_model.dart';

class FavouriteStats{
  final List<Item> allItems;
  final List<Item> filteredItem;
  final String search;

  FavouriteStats({required this.allItems, required this.filteredItem, required this.search});

  FavouriteStats copyWith({List<Item>? allItems, List<Item>? filteredItem, String? search,}){
    return FavouriteStats(allItems: allItems ?? this.allItems, filteredItem: filteredItem ?? this.filteredItem, search: search ?? this.search);
  }


}