import "package:android_dev/screens/content/post_widget.dart";
import "package:android_dev/screens/content/story_widget.dart";
import "package:android_dev/screens/home_screen/models/post_model.dart";
import "package:android_dev/screens/home_screen/models/story_model.dart";
import "package:android_dev/screens/home_screen/services/post_services.dart";
import "package:android_dev/screens/home_screen/services/story_services.dart";
import "package:flutter/material.dart";

class HomeTab extends StatelessWidget {
  const new({super.key});

  @override
  Widget build(BuildContext context) {
    PostServices postServices = PostServices();
    postServices.batchAddPosts(List.generate(
      10,
      (index) => PostModel(
        imageUrl: 'https://www.thedesignwork.com/wp-content/uploads/2011/10/Random-Pictures-of-Conceptual-and-Creative-Ideas-01.jpg',
        description: 'This is a sample post description. It can be quite long and will wrap to the next line if necessary.',
        likeCount: 0,
      ),
    ));

    StoryServices storyServices = StoryServices();
    storyServices.batchAddPosts(List.generate(
      10,
      (index) => StoryModel(
        avatar: 'https://www.shutterstock.com/image-photo/silhouette-woman-holding-camera-taking-260nw-1289607958.jpg',
        imageUrl: 'https://www.thedesignwork.com/wp-content/uploads/2011/10/Random-Pictures-of-Conceptual-and-Creative-Ideas-01.jpg',
        name: "Anna",
      ),
    ));
    

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
