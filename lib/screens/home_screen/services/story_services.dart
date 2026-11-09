import 'package:android_dev/screens/home_screen/models/story_model.dart';

class StoryServices {
  List<StoryModel> storyList=[];

  StoryServices();

  void addStory(StoryModel com){
    storyList.add(com);
  }
  void likeStory(StoryModel post) {
    post.addLike((post.likeCount) + 1);
  }
  void batchAddPosts(List<StoryModel> news) {
    storyList.addAll(news);
  }
}