import 'package:android_dev/screens/home_screen/models/post_model.dart';
import 'package:flutter/material.dart';

class PostWidget extends StatelessWidget {
  final PostModel post;
  final VoidCallback onLike;

  const PostWidget({super.key, required this.post, required this.onLike});

  void openBottomSheet(BuildContext context) {
    showModalBottomSheet<void>(
      context: context,
      builder: (context) => const SizedBox(
        height: 200,
        child: Center(child: Text('Comments')),
      ),
    );
  }


  @override
  Widget build(BuildContext context) => Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(8),
          boxShadow: const [BoxShadow(color: Colors.grey, spreadRadius: 2, blurRadius: 5, offset: Offset(0, 3))],
        ),
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 5),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(8),
              child: Text(post.authorName, style: const TextStyle(fontWeight: FontWeight.bold)),
            ),
            ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: Image.network(post.imageUrl, width: double.infinity, fit: BoxFit.cover),
            ),
            Row(children: [
              IconButton(
                icon: Icon(post.isLiked ? Icons.favorite : Icons.favorite_border),
                color: post.isLiked ? Colors.red : null,
                onPressed: onLike,
              ),
              Text('${post.likeCount}'),
              IconButton(icon: const Icon(Icons.comment), onPressed: () => openBottomSheet(context)),
              IconButton(icon: const Icon(Icons.share), onPressed: () {}),
              const Spacer(),
              IconButton(icon: const Icon(Icons.bookmark_border), onPressed: () {}),
            ]),
            Padding(padding: const EdgeInsets.symmetric(horizontal: 8), child: Text(post.description)),
          ],
        ),
      );
}
