import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../model/item_model.dart';
import 'favourite_stats.dart';

final favouriteProvider =
StateNotifierProvider<FavouriteNotifier, FavouriteStats>((ref) {
  return FavouriteNotifier();
});

class FavouriteNotifier extends StateNotifier<FavouriteStats> {
  FavouriteNotifier()
      : super(FavouriteStats(allItems: [], filteredItem: [], search: ''));

  void addItem() {
    if (state.allItems.isEmpty) {
      state = state.copyWith(
        allItems: _itemData.toList(),
        filteredItem: _itemData.toList(),
      );
    }
  }

  void toggleFavourite(String id) {
    final updatedItems = state.allItems.map((item) {
      if (item.id == id) {
        return item.copyWith(isFavourite: !item.isFavourite);
      }
      return item;
    }).toList();

    state = state.copyWith(
      allItems: updatedItems,
      filteredItem: _filterItem(updatedItems, state.search),
    );
  }

  void filter(String query) {
    state = state.copyWith(
      search: query,
      filteredItem: _filterItem(state.allItems, query),
    );
  }

  void favourite(String option) {
    List<Item> items = _favouriteItem(state.allItems, option);
    state = state.copyWith(filteredItem: items);
  }

  List<Item> _favouriteItem(List<Item> items, String option) {
    if (option == 'All') return items;
    return items.where((item) => item.isFavourite).toList();
  }

  List<Item> _filterItem(List<Item> items, String query) {
    if (query.isEmpty) return items;
    return items
        .where((item) => item.name.toLowerCase().contains(query.toLowerCase()))
        .toList();
  }
}

final List<Item> _itemData = [
  Item(id: '01', name: 'MacBook', isFavourite: false),
  Item(id: '02', name: 'iPhone', isFavourite: false),
  Item(id: '03', name: 'AirPods', isFavourite: false),
  Item(id: '04', name: 'Galaxy Watch', isFavourite: false),
  Item(id: '05', name: 'Dell XPS', isFavourite: false),
  Item(id: '06', name: 'Surface Pro', isFavourite: false),
  Item(id: '07', name: 'Pixel 7', isFavourite: false),
  Item(id: '08', name: 'Lenovo Yoga', isFavourite: false),
  Item(id: '09', name: 'iPad Pro', isFavourite: false),
  Item(id: '10', name: 'OnePlus 12', isFavourite: false),
];
