import "package:android_dev/screens/home_screen/services/dio_service.dart";
import "package:android_dev/screens/auth/login_screen.dart";
import "package:android_dev/screens/auth/registration_screen.dart";
import "package:android_dev/widgets/image_grid_item.dart";
import "package:material_ui/material_ui.dart";

class SearchTab extends StatefulWidget {
  const SearchTab({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final products = ref.watch(productsProvider);
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: const Text('Instagram'),
        actions: [
          TextButton(
            onPressed: () => Navigator.push(
              context,
              MaterialPageRoute(builder: (_) => const LoginScreen()),
            ),
            child: const Text('Login'),
          ),
          TextButton(
            onPressed: () => Navigator.push(
              context,
              MaterialPageRoute(builder: (_) => const RegistrationScreen()),
            ),
            child: const Text('Register'),
          ),
        ],
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
