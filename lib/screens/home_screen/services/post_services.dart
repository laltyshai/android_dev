import 'package:android_dev/screens/home_screen/models/post_model.dart';

// The service knows WHERE posts come from (here: a fixed demo list).
// Riverpod (FeedController) decides WHEN to load them and keeps them.
class PostServices {
  final List<PostModel> posts = [];

  PostServices();

  void addPost(PostModel post) {
    posts.add(post);
  }

  void batchAddPosts(List<PostModel> newPosts) {
    posts.addAll(newPosts);
  }
  List<PostModel> getPosts() => demoPosts;
}

const demoPosts = <PostModel>[
  PostModel(
    id: 'post-1', authorId: 'me', authorName: 'alimhan',
    imageUrl: 'https://www.thedesignwork.com/wp-content/uploads/2011/10/Random-Pictures-of-Conceptual-and-Creative-Ideas-01.jpg',
    description: 'A little inspiration for today.', likeCount: 12,
  ),
  PostModel(
    id: 'post-2', authorId: 'me', authorName: 'alimhan',
    imageUrl: 'https://www.thedesignwork.com/wp-content/uploads/2011/10/Random-Pictures-of-Conceptual-and-Creative-Ideas-01.jpg',
    description: 'Finding beauty in the details.', likeCount: 8,
  ),
];
