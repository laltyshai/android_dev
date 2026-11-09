import 'package:android_dev/screens/home_screen/models/comment_model.dart';

class CommentService {
  List<CommentModel> comList=[];

  CommentService();

  void addComm(CommentModel com){
    comList.add(com);
  }
  void likeComment(CommentModel post) {
    post.addLike((post.likeCount) + 1);
  }
  void batchAddPosts(List<CommentModel> newPosts) {
    comList.addAll(newPosts);
  }
}