import "package:android_dev/screens/home_screen/models/story_model.dart";
import "package:flutter/material.dart";

class StoryWidget extends StatelessWidget {
  final StoryModel? story;
  const StoryWidget({
    super.key,
    required this.story,
    
    });



  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      // onTap: () => nav,
      child: Column(
      children: [
        CircleAvatar(
          radius: 32,
          backgroundImage: NetworkImage(
            story?.avatar ?? 'https://via.placeholder.com/150',
          ),
        ),
        const SizedBox(height: 4),
        Text(story?.name ?? 'user', style: const TextStyle(fontSize: 12)),
      ],
      )
    );
  }
}
