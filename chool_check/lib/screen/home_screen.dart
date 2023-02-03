import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  //latitude - 위도, longitude - 경도
  static final LatLng companyLatLog = LatLng(
    37.5233273,
    126.921252,
  );
  static final CameraPosition initialPosition = CameraPosition(
    target: companyLatLog,
    zoom: 15,
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: renderAppBar(),
      body: Column(
        children: [
          _CustomGoogleMap(initialPosition: initialPosition),
          _ChoolCheckButton(),
        ],
      ),
    );
  }
}
AppBar renderAppBar(){
  return AppBar(
    title: Text(
      '오늘도 출근',
      style: TextStyle(
        color: Colors.blue,
        fontWeight: FontWeight.w700,
      ),
    ),
    backgroundColor: Colors.white,
  );
}

class _CustomGoogleMap extends StatelessWidget {
  final CameraPosition initialPosition;
  const _CustomGoogleMap({required this.initialPosition,Key? key,}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 2,
      child: GoogleMap(
        initialCameraPosition: initialPosition,
        mapType: MapType.normal,
      ),
    );
  }
}
class _ChoolCheckButton extends StatelessWidget {
  const _ChoolCheckButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: Text(
        '출근',
      ),
    );
  }
}