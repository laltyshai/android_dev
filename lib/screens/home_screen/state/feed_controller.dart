import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../models/post_model.dart';
import '../services/post_services.dart';

// Dependency injection: Riverpod creates the service once, others ask for it.
final postServicesProvider = Provider<PostServices>((ref) => PostServices());

class FeedController extends Notifier<List<PostModel>> {
  @override
  List<PostModel> build() => ref.read(postServicesProvider).getPosts();

  void toggleLike(String id) {
    state = [
      for (final post in state)
        if (post.id == id)
          post.copyWith(
            isLiked: !post.isLiked,
            likeCount: post.likeCount + (post.isLiked ? -1 : 1),
          )
        else
          post,
    ];
  }
}

final feedControllerProvider =
    NotifierProvider<FeedController, List<PostModel>>(FeedController.new);
