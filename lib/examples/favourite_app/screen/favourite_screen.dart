import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../provider/favourite_provider.dart';

class FavouriteScreen extends ConsumerWidget {
  const FavouriteScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final itemState = ref.watch(favouriteProvider);

    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: const [
            Icon(CupertinoIcons.heart),
            SizedBox(width: 10),
            Text('Favourite App'),
          ],
        ),
        actions: [
          PopupMenuButton<String>(
            icon: Icon(Icons.filter_alt),
            onSelected: (value) {
              ref.read(favouriteProvider.notifier).favourite(value);
            },
            itemBuilder: (context) => const [
              PopupMenuItem(value: 'All', child: Text('All Items')),
              PopupMenuItem(value: 'Favourite', child: Text('Favourites Only')),
            ],
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            TextField(
              decoration: InputDecoration(
                hintText: 'Search item...',
                suffixIcon: Icon(Icons.search),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
              onChanged: (value) {
                ref.read(favouriteProvider.notifier).filter(value);
              },
            ),
            const SizedBox(height: 20),
            Expanded(
              child: itemState.filteredItem.isEmpty
                  ? Center(child: Text('No items found'))
                  : ListView.separated(
                itemCount: itemState.filteredItem.length,
                separatorBuilder: (context, index) =>
                const SizedBox(height: 10),
                itemBuilder: (context, index) {
                  final item = itemState.filteredItem[index];
                  return Card(
                    elevation: 2,
                    child: ListTile(
                      leading: CircleAvatar(
                        child: Text(item.id),
                      ),
                      title: Text(item.name),
                      trailing: IconButton(
                        icon: Icon(
                          item.isFavourite
                              ? Icons.favorite
                              : Icons.favorite_border,
                          color: item.isFavourite ? Colors.red : null,
                        ),
                        onPressed: () {
                          ref
                              .read(favouriteProvider.notifier)
                              .toggleFavourite(item.id);
                        },
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          ref.read(favouriteProvider.notifier).addItem();
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: Text("Items loaded")),
          );
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
