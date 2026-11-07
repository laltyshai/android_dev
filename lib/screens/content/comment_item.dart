import 'package:flutter/material.dart';
import 'package:android_dev/screens/home_screen/models/comment_model.dart';

class CommentItem extends StatefulWidget {
  final CommentModel? post;
  const CommentItem({super.key,required this.post});

  @override
  State<CommentItem> createState() => _CommentItemState();
}

class _CommentItemState extends State<CommentItem> {
  final bool isLiked = false; 

  @override
  Widget build(BuildContext context) {
    return Container(
      // padding: EdgeInsets.all(8),
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
          Row(children: [
              ClipRRect(
            borderRadius: BorderRadius.circular(8.0),
            child: Image.network(
              widget.post?.imageUrl ?? 'https://via.placeholder.com/150',
              width: 30,
              height: 30,
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(width: 20,),
          Text(widget.post?.name?? ""),

          

          ],
          ),
          SizedBox(height: 20,),
          Text(widget.post?.text?? ""),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
          Text('${widget.post?.likeCount}'),
              
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
              
            
            ],
          ),
        
        ],)

    );
  }
}