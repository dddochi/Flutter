import 'package:flutter/material.dart';
import 'package:foot/const/colors.dart';
import 'package:foot/screen/world_map_screen.dart';

import '../component/friend_post_set.dart';
import '../component/menu_bar.dart';
import '../component/mode_icon.dart';

class WorldCategoryScreen extends StatelessWidget {
  const WorldCategoryScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: MAIN_BLUE_COLOR,
        width: MediaQuery.of(context).size.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            _TopBar(title: 'Friend\'s news'),
            FriendPostSet(),
            MenuBar(),
            SizedBox(height: 30,),
          ],
        ),
      ),
    );
  }
}

class _TopBar extends StatelessWidget {
  final String title;
  const _TopBar({
    required this.title,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(30, 80, 10, 45),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(title,
              style: TextStyle(
                color: Colors.black,
                fontSize: 25.0,
                fontWeight: FontWeight.w700,
              )),
          ModeIcon(
            modeIcon: Icons.join_right_rounded,
            onPressed: (){
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (BuildContext context) => WorldMapScreen()));
            },
          ),
        ],
      ),
    );
  }
}
