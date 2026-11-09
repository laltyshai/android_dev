import "package:android_dev/screens/home_screen/models/story_model.dart";
import "package:flutter/material.dart";
import "package:android_dev/screens/home_screen/services/comment_services.dart";

class StoryWidget extends StatefulWidget {
  final StoryModel? story;
  const StoryWidget({super.key,required this.story});

  @override
  State<StoryWidget> createState() => _StoryWidgetState();
}

class _StoryWidgetState extends State<StoryWidget> {
  final bool isLiked = false; 
 // This should ideally be managed by state management
  CommentService commentService = CommentService();
  


  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      // onTap: () => nav,
      child: Column(
      children: [
        CircleAvatar(
          radius: 32,
          backgroundImage: NetworkImage(
            widget.story?.avatar ?? 'https://via.placeholder.com/150',
          ),
        ),
        const SizedBox(height: 4),
        Text(widget.story?.name ?? 'user', style: const TextStyle(fontSize: 12)),
      ],
      )
    );
  }
}
