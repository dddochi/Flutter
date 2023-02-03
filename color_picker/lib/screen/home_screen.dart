import 'dart:math';

import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    // hexa color : 6자리 / 각 16진수
    int colorNumber = 0xff3195f7;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text('Color Picker'),
      ),
      //0xff3195f7
      backgroundColor: Color(colorNumber),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Expanded(
                child: Center(
                  child: Text(
                    'Color',
                  ),
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  Random rand = Random();
                  int randomNumber = rand.nextInt(1000);
                  //list에 hexa string 6개를 넣어준다.
                  //string을 hexa로 바꾸준다.
                  setState(() {
                    colorNumber = randomNumber;
                  });
                },
                child: Text('Change'),
                style: ElevatedButton.styleFrom(
                  primary: Colors.black,
                  padding: EdgeInsets.symmetric(vertical: 15.0),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
