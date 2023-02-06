import 'package:flutter/material.dart';

import '../screen/post_screen.dart';

class CategoryComponent extends StatelessWidget {
  final String imageUrl;
  final String title;
  final String date;
  final String introductionComment;
  const CategoryComponent({
    required this.imageUrl,
    required this.title,
    required this.date,
    required this.introductionComment,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(20.0, 0, 0, 30.0),
      child: GestureDetector(
        onTap: (){
          Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context)=>PostScreen()));
        },
        child: Row(
          children: [
            Image.network(
              imageUrl,
              fit: BoxFit.fill,
              width: 130.0,
              height: 85.0,
            ),
            SizedBox(
              width: 20.0,
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: TextStyle(
                      fontSize: 17.0,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  SizedBox(
                    height: 4.0,
                  ),
                  Text(
                    date,
                    style: TextStyle(
                      fontSize: 13.0,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  Text(
                    introductionComment,
                    style: TextStyle(
                      fontSize: 15.0,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  SizedBox(
                    height: 30.0,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
