import 'package:flutter/material.dart';
import 'category_component.dart';
import 'friend_post_component.dart';

class FriendPostSet extends StatelessWidget {
  const FriendPostSet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              children: [
                SizedBox(width: 23.0,),
                FriendPostComponent(
                  imageUrl:
                      'https://upload.wikimedia.org/wikipedia/commons/thumb/b/b6/Image_created_with_a_mobile_phone.png/440px-Image_created_with_a_mobile_phone.png',
                  title: 'title',
                ),
                SizedBox(width: 24.0,),
                FriendPostComponent(
                  imageUrl:
                      'https://upload.wikimedia.org/wikipedia/commons/thumb/b/b6/Image_created_with_a_mobile_phone.png/440px-Image_created_with_a_mobile_phone.png',
                  title: 'title',
                ),
                SizedBox(width: 23.0,),
              ],
            ),
            Row(
              children: [
                SizedBox(width: 23.0,),
                FriendPostComponent(
                  imageUrl:
                  'https://upload.wikimedia.org/wikipedia/commons/thumb/b/b6/Image_created_with_a_mobile_phone.png/440px-Image_created_with_a_mobile_phone.png',
                  title: 'title',
                ),
                SizedBox(width: 24.0,),
                FriendPostComponent(
                  imageUrl:
                  'https://upload.wikimedia.org/wikipedia/commons/thumb/b/b6/Image_created_with_a_mobile_phone.png/440px-Image_created_with_a_mobile_phone.png',
                  title: 'title',
                ),
                SizedBox(width: 23.0,),
              ],
            ),
            Row(
              children: [
                SizedBox(width: 23.0,),
                FriendPostComponent(
                  imageUrl:
                  'https://upload.wikimedia.org/wikipedia/commons/thumb/b/b6/Image_created_with_a_mobile_phone.png/440px-Image_created_with_a_mobile_phone.png',
                  title: 'title',
                ),
                SizedBox(width: 24.0,),
                FriendPostComponent(
                  imageUrl:
                  'https://upload.wikimedia.org/wikipedia/commons/thumb/b/b6/Image_created_with_a_mobile_phone.png/440px-Image_created_with_a_mobile_phone.png',
                  title: 'title',
                ),
                SizedBox(width: 23.0,),
              ],
            ),
            Row(
              children: [
                SizedBox(width: 23.0,),
                FriendPostComponent(
                  imageUrl:
                  'https://upload.wikimedia.org/wikipedia/commons/thumb/b/b6/Image_created_with_a_mobile_phone.png/440px-Image_created_with_a_mobile_phone.png',
                  title: 'title',
                ),
                SizedBox(width: 24.0,),
                FriendPostComponent(
                  imageUrl:
                  'https://upload.wikimedia.org/wikipedia/commons/thumb/b/b6/Image_created_with_a_mobile_phone.png/440px-Image_created_with_a_mobile_phone.png',
                  title: 'title',
                ),
                SizedBox(width: 23.0,),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

