import 'package:flutter/material.dart';
import 'package:foot/screen/login_screen.dart';
import 'package:foot/screen/mypage_category_screen.dart';
import 'package:foot/screen/mypage_map_screen.dart';
import 'package:foot/screen/signup_screen.dart';
import 'package:foot/screen/splash_screen.dart';
import 'package:foot/screen/world_screen.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: WorldScreen(),
    ),
  );
}