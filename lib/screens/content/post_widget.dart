import "package:android_dev/screens/content/comment_item.dart";
import "package:android_dev/screens/home_screen/models/post_model.dart";
import "package:android_dev/screens/home_screen/models/comment_model.dart";
import "package:flutter/material.dart";
import "package:android_dev/screens/home_screen/services/comment_service.dart";

class PostWidget extends StatefulWidget {
  final PostModel? post;
  const PostWidget({super.key,required this.post});

  @override
  State<PostWidget> createState() => _PostWidgetState();
}

class _PostWidgetState extends State<PostWidget> {
  final bool isLiked = false; 
 // This should ideally be managed by state management
  CommentService commentService = CommentService();
  
 void openBottomSheet() {
  commentService.batchAddPosts(List.generate(
      10,
      (index) => CommentModel(
        imageUrl: 'https://www.thedesignwork.com/wp-content/uploads/2011/10/Random-Pictures-of-Conceptual-and-Creative-Ideas-01.jpg',
        text: 'This is a sample comment description. It can be quite long and will wrap to the next line if necessary.',
        likeCount: 0,
      ),
    ));
    showModalBottomSheet(
      
      context: context,
      builder: (BuildContext context) {
        return Container(
          // height: 1200,
          color: Colors.white,
          child:ListView.builder(
        itemCount: commentService.comList.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(4.0),
            child: CommentItem(post: commentService.comList[index]),
          );
        },
      ),
        );
      },
    );
  }


  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8.0),
        boxShadow: [
          BoxShadow(
            color: Colors.grey,
            spreadRadius: 2,
            blurRadius: 5,
            offset: const Offset(0, 3), // changes position of shadow
          ),
        ],
      ),
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 5),
      child: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(8.0),
            child: Image.network(
              widget.post?.imageUrl ?? 'https://via.placeholder.com/150',
              width: double.infinity,
              fit: BoxFit.cover,
            ),
          ),
          Row(
            children: [
              IconButton(
                icon: Icon(isLiked ? Icons.favorite : Icons.favorite_border),
                onPressed: () {
                  setState(() {
                    // This should ideally update the like count in a state management solution
                    if (isLiked) {
                      widget.post?.addLike((widget.post?.likeCount ?? 1) - 1);
                    } else {
                      widget.post?.addLike((widget.post?.likeCount ?? 0) + 1);
                    }
                  });
                },
              ),
              Text('${widget.post?.likeCount ?? 0}'),
              IconButton(
                icon: const Icon(Icons.comment),
                onPressed: () {
                  openBottomSheet();
                },
              ),
              IconButton(
                icon: const Icon(Icons.share),
                onPressed: () {},
              ),
              Spacer(),
              IconButton(
                icon: const Icon(Icons.bookmark_border),
                onPressed: () {},
              ),
            ],
          ),
          Text(
            widget.post?.description ?? '',
            style: const TextStyle(fontSize: 16.0),
          ),

        ],)

    );
  }
}