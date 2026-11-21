import 'package:android_dev/screens/content/post_widget.dart';
import 'package:android_dev/screens/home_screen/state/feed_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class HomeTab extends ConsumerWidget {
  const HomeTab({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final posts = ref.watch(feedControllerProvider);
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(title: const Text('Instagram')),
      body: ListView.builder(
        itemCount: posts.length,
        itemBuilder: (context, index) => Padding(
          padding: const EdgeInsets.all(4),
          child: PostWidget(
            post: posts[index],
            onLike: () => ref.read(feedControllerProvider.notifier).toggleLike(posts[index].id),
          ),
        ),
      ),
    );
  }
}
