import "package:android_dev/screens/content/comment_item.dart";
import "package:android_dev/screens/home_screen/models/post_model.dart";
import "package:android_dev/screens/home_screen/models/comment_model.dart";
import "package:flutter/material.dart";

class PostWidget extends StatelessWidget {
  final PostModel? post;
  final VoidCallback onTap;
  final VoidCallback onCommentTap;

  const PostWidget({
    super.key,
    required this.post,
      required this.onTap,
    required this.onCommentTap
  });


 // This should ideally be managed by state management

 void openBottomSheet(BuildContext cont) {
    // Each post shows only its own comments.
    final List<CommentModel> comments = post?.comments ?? [];
    showModalBottomSheet(

      context:cont,
      builder: (BuildContext context) {
        return Container(
          // height: 1200,
          color: Colors.white,
          child: comments.isEmpty
              ? const Center(child: Text('No comments yet'))
              : ListView.builder(
        itemCount: comments.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(4.0),
            child: CommentItem(post: comments[index], onTap: onCommentTap),
          );
        },
      ),
        );
      },
    );
  }


  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8.0),
        boxShadow: [
          BoxShadow(
            color: Colors.grey,
            spreadRadius: 2,
            blurRadius: 5,
            offset: const Offset(0, 3), // changes position of shadow
          ),
        ],
      ),
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 5),
      child: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(8.0),
            child: Image.network(
              post?.imageUrl ?? 'https://via.placeholder.com/150',
              width: double.infinity,
              fit: BoxFit.cover,
            ),
          ),
          Row(
            children: [
              IconButton(
                icon: Icon(Icons.favorite),
                onPressed: () {
                 onTap;
                },
              ),
              Text('${post?.likeCount ?? 0}'),
              IconButton(
                icon: const Icon(Icons.comment),
                onPressed: () {
                  openBottomSheet(context);
                },
              ),
              IconButton(
                icon: const Icon(Icons.share),
                onPressed: () {},
              ),
              Spacer(),
              IconButton(
                icon: const Icon(Icons.bookmark_border),
                onPressed: () {},
              ),
            ],
          ),
          Text(
            post?.description ?? '',
            style: const TextStyle(fontSize: 16.0),
          ),

        ],)

    );
  }
}