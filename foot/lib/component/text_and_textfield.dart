import 'package:flutter/material.dart';

class TextAndTextField extends StatelessWidget {
  final String textString;
  final bool isObsecureTextTrue;
  const TextAndTextField({
    required this.textString,
    required this.isObsecureTextTrue,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final textStyle = TextStyle(
      color: Colors.black,
      fontSize: 15.0,
      fontWeight: FontWeight.w600,
    );
    final textFieldDecoration = InputDecoration(
      border: InputBorder.none,
      filled: true,
      fillColor: Colors.white,
      //labelText: 'Email',
    );
    return Container(
      width: MediaQuery.of(context).size.width,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            textString,
            style: textStyle,
          ),
          SizedBox(
            height: 10.0,
          ),
          Container(
            height: 40.0,
            width: 400.0,
            child: TextField(
              obscureText: isObsecureTextTrue,
              decoration: textFieldDecoration,
            ),
          )
        ],
      ),
    );
  }
}
