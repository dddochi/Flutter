import 'package:flutter/material.dart';
import 'package:foot/component/custom_google_map.dart';
import 'package:foot/screen/mypage_map_screen.dart';
import 'package:foot/screen/world_category_screen.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

import '../component/menu_bar.dart';
import '../component/mode_icon.dart';
import '../const/colors.dart';

class WorldMapScreen extends StatefulWidget {
  const WorldMapScreen({Key? key}) : super(key: key);

  @override
  State<WorldMapScreen> createState() => _WorldMapScreenState();
}

class _WorldMapScreenState extends State<WorldMapScreen> {
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
      body: Stack(
        children: [
          CustomGoogleMap(
            latLng: worldLatLng,
            initialPosition: initialPosition,
          ),
          Positioned(
            top: 200.0,
            right: 5,
            child: ModeIcon(modeIcon: Icons.join_left_rounded,
            onPressed: (){
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (BuildContext context) => WorldCategoryScreen()));
            },),
          ),
            /*IconButton(
              onPressed: () {},
              iconSize: 32.0,
              color: DEEP_GREY_COLOR,
              icon: Icon(Icons.join_left_rounded),
            ),
          ),

             */
          Positioned(
              bottom: 30,
              left:5,
              right:5,
              child: MenuBar()),
        ],
      ),
    );
  }
}