import 'package:android_dev/core/auth/auth_controller.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:android_dev/core/db/app_database.dart';
import '../services/local_data_service.dart';
import '../models/post_model.dart';

extension CachedPostMapper on CachedPost {
  PostModel toModel() => PostModel(
        id: id,
        imageUrl: imageUrl,
        description: caption,
        authorId: authorId,
        authorName: authorName,
        likeCount: likes,
        isLiked: isLiked,
      );
}

final feedPostsProvider = StreamProvider<List<PostModel>>((ref) {
  return ref.watch(localDataServiceProvider).watchPosts().map(
        (posts) => posts.map((post) => post.toModel()).toList(),
      );
});

class FeedController {
  FeedController(this._localData, this._ref);

  final LocalDataService _localData;
  final Ref _ref;

  Future<void> toggleLike(String id) async {
    final user = _ref.read(authProvider);
    final post = await _localData.getPost(id);
    if (post != null && user != null) await _localData.toggleLike(post, user.id);
  }

  Future<void> createPost({required String imageUrl, required String caption}) async {
    final user = _ref.read(authProvider);
    if (user == null) return;
    final now = DateTime.now().microsecondsSinceEpoch;
    return _localData.savePost(
      CachedPostsCompanion.insert(
        id: 'post-$now',
        authorId: user.id,
        authorName: user.nickname,
        imageUrl: imageUrl,
        caption: caption,
      ),
    );
  }
}

final feedControllerProvider = Provider<FeedController>(
  (ref) => FeedController(ref.watch(localDataServiceProvider), ref),
);
