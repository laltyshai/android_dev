import 'package:flutter/material.dart';
import 'package:android_dev/screens/home_screen/models/comment_model.dart';

class CommentItem extends StatelessWidget {
  final CommentModel? post;
  final VoidCallback onTap;

  const CommentItem({super.key,
  required this.post,
  required this.onTap
  });


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
              post?.imageUrl ?? 'https://via.placeholder.com/150',
              width: 30,
              height: 30,
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(width: 20,),
          Text(post?.name?? ""),

          

          ],
          ),
          SizedBox(height: 20,),
          Text(post?.text?? ""),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
          Text('${post?.likeCount}'),
              
              IconButton(
                icon: Icon(Icons.favorite),
                onPressed:onTap,)
            ])
                
            
            ],
          ),
        
        

    );
  }
}