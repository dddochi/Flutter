import 'package:flutter/material.dart';

class FriendPostComponent extends StatelessWidget {
  final String imageUrl;
  final String title;
  const FriendPostComponent({
    required this.imageUrl,
    required this.title,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 10.0),
      child: Column(
        children: [
          Image.network(
            imageUrl,
            fit: BoxFit.fill,
            width: 160.0,
            height: 100.0,
          ),
          SizedBox(
            height: 20.0,
          ),
          Text(
            title,
            style: TextStyle(
              fontSize: 15.0,
              fontWeight: FontWeight.w600,
            ),
          ),
        ],
      ),
    );
  }
}
