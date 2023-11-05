import 'package:flutter/material.dart';
class BlogCard extends StatefulWidget {
  BlogCard({required this.title, required this.imgUrl});

  final String title;
  final String imgUrl;
  @override
  State<BlogCard> createState() => _BlogCardState();
}

class _BlogCardState extends State<BlogCard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: 100,
        width: MediaQuery.sizeOf(context).width*0.96,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          color: Colors.white,
        ),
        child: Row(
          children: [
            SizedBox(width: 20,),
            Container(
              decoration: BoxDecoration(
                color:  Colors.yellow,
                borderRadius: BorderRadius.circular(10),
              ),
              height: 80,
              width: 90,
              child:  Image.network(widget.imgUrl, fit: BoxFit.fill,),
            ),
            SizedBox(width: 20,),
            Expanded(
                child: Text(
                  widget.title,
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                ),
            )
          ],
        ),
      ),
    );
  }
}
