import "package:flutter/material.dart";

class ImageGridItem extends StatelessWidget {
  final String imageUrl;
  final String? title;
  const ImageGridItem({super.key, required this.imageUrl , this.title});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => Scaffold(
              appBar: AppBar(title: const Text('Image Detail')),
              body: Center(
                child: Image.network(imageUrl),
              ),
            ),
          ),
        );
        // Handle image tap if needed
      },
      child:
     Column( 
      children: [
        Expanded(
          child: Container(
            decoration: BoxDecoration(
              color: Colors.grey[300],
              image: DecorationImage(
                image: NetworkImage(imageUrl),
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
        if (title != null)
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(title!, style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
          ),
      ]
     )
      );
      
    
  }
}