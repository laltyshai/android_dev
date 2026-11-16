import 'package:android_dev/screens/home_screen/models/comment_model.dart';
import 'package:android_dev/screens/home_screen/models/post_model.dart';

class PostServices{

  final List<PostModel> posts = [];

  PostServices();

  void addPost(PostModel post) {
    posts.add(post);
  }

  void likePost(PostModel post) {
    post.addLike((post.likeCount ?? 0) + 1);
  }

  void commentOnPost(PostModel post, CommentModel comment) {
    post.addComment(comment);
  }

  void batchAddPosts(List<PostModel> newPosts) {
    posts.addAll(newPosts);
  }
}