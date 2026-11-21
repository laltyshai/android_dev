import "package:android_dev/screens/home_screen/state/products_provider.dart";
import "package:android_dev/widgets/image_grid_item.dart";
import "package:flutter/material.dart";
import "package:flutter_riverpod/flutter_riverpod.dart";

class SearchTab extends ConsumerWidget {
  const new({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final products = ref.watch(productsProvider);
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: const Text('Instagram'),
      ),
      body: products.when(
        loading: () => const Center(child: CircularProgressIndicator()),
        error: (error, _) => Center(child: Text('Error: $error')),
        data: (data) => data.isEmpty
            ? const Center(child: Text('No data available'))
            : GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 4.0,
                mainAxisSpacing: 4.0,
              ),
              itemCount: data.length,
              itemBuilder: (context, index) {
                final item = data[index];
                return ImageGridItem(imageUrl: item['thumbnail'], description: item['description'], title: item['title']);
              },
            ),
      ),
    );
  }
}
