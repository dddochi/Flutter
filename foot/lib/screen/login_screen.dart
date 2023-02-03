import 'package:flutter/material.dart';

import '../const/colors.dart';

class LogInScreen extends StatelessWidget {
  const LogInScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MAIN_BLUE_COLOR,
      body: SafeArea(
        child: Container(
          width: MediaQuery.of(context).size.width,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 30.0,),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                //logo
                //Log in
                //Email - ()
                //Password - ()
                _Logo(),
                _Input(),
                _BottomButton(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class _Logo extends StatelessWidget {
  const _Logo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 90.0),
      child: Image.asset(
        'asset/img/logo.png',
        width: 120.0,
        height: 120.0,
      ),
    );
  }
}

class _Input extends StatelessWidget {
  const _Input({Key? key}) : super(key: key);

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
    return Expanded(
      child: Container(
        width: MediaQuery.of(context).size.width,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Log In',
              style: textStyle.copyWith(
                fontSize:25.0,
                fontWeight: FontWeight.w700,
              ),
            ),
            SizedBox(
              height: 30.0,
            ),
            Text(
              'Email',
              style: textStyle,
            ),
            SizedBox(
              height: 10.0,
            ),
        Container(
          height:40.0,
          width: 400.0,
          child: TextField(
            obscureText: false,
            decoration: textFieldDecoration,
          ),
        ),
            SizedBox(
              height: 30.0,
            ),
            Text(
              'Password',
              style: textStyle,
            ),
            SizedBox(
              height: 10.0,
            ),
            Container(
              height:40.0,
              width: 400.0,
              child: TextField(
                obscureText: true,
                decoration: textFieldDecoration,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
class _BottomButton extends StatelessWidget {
  const _BottomButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 40.0),
      child: ElevatedButton(onPressed: (){}, child: Text('Log In'),),
    );
  }
}
