import "package:android_dev/screens/content/post_widget.dart";
import "package:android_dev/screens/content/story_widget.dart";
import "package:android_dev/screens/home_screen/data/mock_posts.dart";
import "package:android_dev/screens/home_screen/data/mock_story.dart";
import "package:android_dev/screens/home_screen/services/post_services.dart";
import "package:android_dev/screens/home_screen/services/story_services.dart";
import "package:flutter/material.dart";

class HomeTab extends StatelessWidget {
  const new({super.key});

  @override
  Widget build(BuildContext context) {
    PostServices postServices = PostServices();
    postServices.batchAddPosts(mockPosts);

    StoryServices storyServices = StoryServices();
    storyServices.batchAddPosts(mockStories);


    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: const Text('Instagram'),
      ),
      body: ListView.builder(
        itemCount: postServices.posts.length + 1,
        itemBuilder: (context, index) {
          if (index == 0) {
            return SizedBox(
              height: 100,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: storyServices.storyList.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: StoryWidget(story: storyServices.storyList[index]),
                  );
                },
              ),
            );
          }
          return Padding(
            padding: const EdgeInsets.all(4.0),
            child: PostWidget(post: postServices.posts[index - 1]),
          );
        },
      ),
    );
  }
}
