import 'package:flutter/material.dart';
import 'package:foot/screen/mypage_category_screen.dart';

import '../screen/mypage_map_screen.dart';

class MyProfile extends StatefulWidget {
  final String profileImage;
  IconData modeIcon; //join_left_rounded or join_right_rounded
  MyProfile({
    required this.profileImage,
    required this.modeIcon,
    Key? key,
  }) : super(key: key);

  @override
  State<MyProfile> createState() => MyProfileState();
}

class MyProfileState extends State<MyProfile> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: Row(
        children: [
          Container(
            width: 90.0,
            height: 90.0,
            margin: EdgeInsets.all(20.0),
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(widget.profileImage),
              ),
              border: Border.all(
                color: Colors.grey,
                width: 0.5,
              ),
              borderRadius: BorderRadius.circular(50.0),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(right: 130.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Name',
                  style: TextStyle(
                    fontSize: 17.0,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(height: 20.0),
                Text('comment',
                    style: TextStyle(
                      fontSize: 15.0,
                      fontWeight: FontWeight.w400,
                    )),
              ],
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(
                'Mode',
                style: TextStyle(
                  fontSize: 13.0,
                  fontWeight: FontWeight.w500,
                ),
              ),
              IconButton(
                onPressed: () {
                  if(widget.modeIcon == Icons.join_left_rounded){
                    Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context)=>MyPageCategoryScreen()));
                  }
                  if(widget.modeIcon == Icons.join_right_rounded){
                    Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context)=>MyPageMapScreen()));
                  }
                },
                iconSize: 30.0,
                icon: Icon(widget.modeIcon),
              ),
              SizedBox(
                height: 25.0,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
