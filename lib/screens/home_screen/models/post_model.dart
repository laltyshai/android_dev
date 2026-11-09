import 'package:android_dev/screens/home_screen/models/comment_model.dart';

class PostModel {
  final String? imageUrl;
  int? likeCount;
  final String? description;
  final List<CommentModel> comments;

  PostModel({
    this.imageUrl,
    this.likeCount,
    this.description,
    List<CommentModel>? comments,
  }) : comments = comments ?? [];

  // Always matches the real number of comments.
  int get commentCount => comments.length;

  void addLike(int newCount) {
    // This method should ideally update the like count in a state management solution
    likeCount = newCount;
  }

  void addComment(CommentModel comment) {
    comments.add(comment);
  }
}
