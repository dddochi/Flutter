import 'package:flutter/material.dart';
import 'package:foot/component/custom_google_map.dart';
import 'package:foot/screen/mypage_map_screen.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

import '../component/menu_bar.dart';
import '../component/mode_icon.dart';
import '../const/colors.dart';

class WorldScreen extends StatefulWidget {
  const WorldScreen({Key? key}) : super(key: key);

  @override
  State<WorldScreen> createState() => _WorldScreenState();
}

class _WorldScreenState extends State<WorldScreen> {
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
            child: ModeIcon(modeIcon: Icons.join_left_rounded),
          ),
            /*IconButton(
              onPressed: () {},
              iconSize: 32.0,
              color: DEEP_GREY_COLOR,
              icon: Icon(Icons.join_left_rounded),
            ),
          ),

             */
          MenuBar(),
        ],
      ),
    );
  }
}