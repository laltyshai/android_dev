import 'package:android_dev/screens/home_screen/state/feed_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ProfileTab extends ConsumerWidget {
  const ProfileTab({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final ownPosts = ref.watch(feedControllerProvider).where((post) => post.authorId == 'me').toList();
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(title: const Text('Profile')),
      body: CustomScrollView(slivers: [
        SliverToBoxAdapter(
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Row(children: [
              const CircleAvatar(
                radius: 42,
                backgroundImage: NetworkImage('https://i.pravatar.cc/200?img=12'),
              ),
              const SizedBox(width: 28),
              Expanded(
                child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                  const Text('alimhan', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                  const SizedBox(height: 10),
                  Text('${ownPosts.length} posts'),
                ]),
              ),
            ]),
          ),
        ),
        const SliverToBoxAdapter(
          child: Padding(
            padding: EdgeInsets.fromLTRB(16, 4, 16, 12),
            child: Text('Posts', style: TextStyle(fontWeight: FontWeight.bold)),
          ),
        ),
        SliverGrid.builder(
          itemCount: ownPosts.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            crossAxisSpacing: 2,
            mainAxisSpacing: 2,
          ),
          itemBuilder: (context, index) => Image.network(ownPosts[index].imageUrl, fit: BoxFit.cover),
        ),
      ]),
    );
  }
}
