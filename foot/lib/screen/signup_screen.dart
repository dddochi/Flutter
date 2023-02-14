import 'package:flutter/material.dart';
import 'package:foot/screen/world_map_screen.dart';

import '../component/big_logo.dart';
import '../component/bottom_button.dart';
import '../component/text_and_textfield.dart';
import '../const/colors.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MAIN_BLUE_COLOR,
      body: SafeArea(
        child: Container(
          width: MediaQuery.of(context).size.width,
          child: Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 30.0,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                //logo
                //Log in
                //Email - ()
                //Password - ()
                BigLogo(),
                _Input(),
                BottomButton(
                  buttonName: 'SIGNUP',
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(builder: (BuildContext context) => WorldMapScreen()),
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class _Input extends StatelessWidget {
  const _Input({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Log In',
            style: TextStyle(
              color: Colors.black,
              fontSize: 25.0,
              fontWeight: FontWeight.w700,
            ),
          ),
          SizedBox(
            height: 30.0,
          ),
          TextAndTextField(
            textString: 'Email',
            isObsecureTextTrue: false,
          ),
          SizedBox(
            height: 30.0,
          ),
          TextAndTextField(
            textString: 'Password',
            isObsecureTextTrue: true,
          ),
          SizedBox(
            height: 30.0,
          ),
          TextAndTextField(
            textString: 'User Name',
            isObsecureTextTrue: false,
          ),
        ],
      ),
    );
  }
}
