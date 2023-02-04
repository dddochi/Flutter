import 'package:flutter/material.dart';
import 'package:foot/screen/login_screen.dart';
import 'package:foot/screen/signup_screen.dart';
import 'package:foot/screen/splash_screen.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    ),
  );
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SignUpScreen();
  }
}
