import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

import '../component/my_profile.dart';
import '../component/search_bar.dart';

class MyPageMapScreen extends StatefulWidget {
  const MyPageMapScreen({Key? key}) : super(key: key);

  @override
  State<MyPageMapScreen> createState() => _MyPageMapScreenState();
}

class _MyPageMapScreenState extends State<MyPageMapScreen> {
  static final LatLng companyLatLng = LatLng(
    37.5233273,
    126.921252,
  );
  static final CameraPosition initialPosition = CameraPosition(
    target: companyLatLng,
    zoom: 15,
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        bottom: false,
        child: Column(
          children: [
            MyProfile(
              profileImage: 'asset/img/basic_profile.png',
              modeIcon: Icons.join_left_rounded,
            ),
            SearchBar(),
            Expanded(
              flex: 5,
              child: GoogleMap(
                initialCameraPosition: initialPosition,
                mapType: MapType.normal,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
