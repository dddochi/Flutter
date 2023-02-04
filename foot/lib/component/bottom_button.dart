import 'package:flutter/material.dart';
class BottomButton extends StatelessWidget {
  const BottomButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 40.0),
      child: ElevatedButton(onPressed: (){}, child: Text('Log In'),),
    );
  }
}

