import 'package:flutter/material.dart';

import '../screen/world_screen.dart';
class BottomButton extends StatelessWidget {
  const BottomButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 40.0),
      child: ElevatedButton(onPressed: (){
        Navigator.of(context).push(
          MaterialPageRoute(builder: (BuildContext context)=> WorldScreen()),
        );
      }, child: Text('Log In'),),
    );
  }
}

