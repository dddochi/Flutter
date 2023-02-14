import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

import '../component/bottom_button.dart';
import '../component/custom_google_map.dart';
import '../component/menu_bar.dart';
import '../component/mode_icon.dart';
import '../component/profile.dart';
import '../component/search_bar.dart';
import 'mypage_category_screen.dart';

class MyPageMapScreen extends StatefulWidget {
  const MyPageMapScreen({Key? key}) : super(key: key);

  @override
  State<MyPageMapScreen> createState() => _MyPageMapScreenState();
}

class _MyPageMapScreenState extends State<MyPageMapScreen> {
  static final LatLng worldLatLng = LatLng(
    37.5233273,
    126.921252,
  );
  static final CameraPosition initialPosition = CameraPosition(
    target: worldLatLng,
    zoom: 15,
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        bottom: false,
        child: Stack(
          children: [
            Column(
              children: [
                MyProfile(
                  profileImage: 'asset/img/basic_profile.png',
                ),
                SearchBar(),
                Expanded(
                  flex: 5,
                  child: CustomGoogleMap(
                    latLng: worldLatLng,
                    initialPosition: initialPosition,
                  ),
                ),
              ],
            ),
            Positioned(
              top: 60,
              right: 5,
              child: ModeIcon(modeIcon: Icons.join_left_rounded,
              onPressed: (){
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (BuildContext context) => MyPageCategoryScreen()));
              },),
            ),
            Positioned(
              bottom: 30,
              right: 0,
              left: 0,
              child: MenuBar(),
            ),
          ],
        ),
      ),
    );
  }
}
