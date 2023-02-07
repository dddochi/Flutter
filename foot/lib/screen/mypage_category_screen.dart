import 'package:flutter/material.dart';

import '../component/category_page.dart';
import '../component/mode_icon.dart';
import '../component/profile.dart';
import '../component/search_bar.dart';

class MyPageCategoryScreen extends StatefulWidget {
  const MyPageCategoryScreen({Key? key}) : super(key: key);

  @override
  State<MyPageCategoryScreen> createState() => _MyPageCategoryScreenState();
}

class _MyPageCategoryScreenState extends State<MyPageCategoryScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        bottom: false,
        child:
        Stack(
          children: [
            Column(
              children: [
                MyProfile(
                  profileImage: 'asset/img/basic_profile.png',
                ),
                SearchBar(),
                Expanded(
                  flex: 5,
                  child: CategoryPage(),
                ),
              ],
            ),
            Positioned(
              top: 60,
              right: 5,
              child: ModeIcon(modeIcon: Icons.join_right_rounded),
            ),
          ],
        ),
      ),
    );
  }
}
