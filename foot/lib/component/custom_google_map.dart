import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class CustomGoogleMap extends StatelessWidget {
  final LatLng latLng;
  final CameraPosition initialPosition;
  const CustomGoogleMap({
    required this.latLng,
    required this.initialPosition,
    Key? key,}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  GoogleMap(
      initialCameraPosition: initialPosition,
      mapType: MapType.normal,
    );
  }
}
