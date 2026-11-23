import 'package:android_dev/screens/home_screen/models/comment_model.dart';

class PostModel {
  final String id;
  final String imageUrl;
  final int likeCount;
  final int commentCount;
  final String description;
  final String authorId;
  final String authorName;
  final bool isLiked;

  const PostModel({
    required this.id,
    required this.imageUrl,
    required this.description,
    required this.authorId,
    required this.authorName,
    this.likeCount = 0,
    this.commentCount = 0,
    this.isLiked = false,
  });

  PostModel copyWith({int? likeCount, bool? isLiked}) => PostModel(
        id: id,
        imageUrl: imageUrl,
        description: description,
        authorId: authorId,
        authorName: authorName,
        likeCount: likeCount ?? this.likeCount,
        commentCount: commentCount,
        isLiked: isLiked ?? this.isLiked,
      );
}
