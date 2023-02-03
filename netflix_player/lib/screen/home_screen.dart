import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

import '../component/custom_video_player.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  XFile? video;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: video == null ? renderEmpty() : renderVideo(),
    );
  }

  Widget renderVideo() {
    return Center(
      child: CustomVideoPlayer(video: video!, onNewVideoPressed: onNewVideoPressed,),
    );
  }

  Widget renderEmpty() {
    return Container(
      width: MediaQuery.of(context).size.width,
      decoration: getBoxDecoration(),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          _Logo(
            onTapPressed: onNewVideoPressed,
          ),
          _AppName(),
        ],
      ),
    );
  }
  void onNewVideoPressed() async {
    //image picker가 뜨도록 하기
    //maybe setState써서 renderVideo()띄우기
    final video = await ImagePicker().pickVideo(
      source: ImageSource.gallery,
    );
    if(video!= null){
      setState(() {
        this.video = video;
      });
    }
  }
}
BoxDecoration getBoxDecoration(){
  return BoxDecoration(
    gradient: LinearGradient(
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter,
      colors: [
        Color(0xff000118),
        Color(0xffbd3526),
        Color(0xff000118),
      ],
    ),
  );
}

class _Logo extends StatelessWidget {
  final VoidCallback onTapPressed;
  const _Logo({
    required this.onTapPressed,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTapPressed, //onTapPressed,
      child: Image.asset('asset/img/logo.png', height: 250.0, width: 250.0),
    );
  }
}

class _AppName extends StatelessWidget {
  const _AppName({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final textStyle = TextStyle(
      color: Colors.black,
      fontSize: 30,
      fontWeight: FontWeight.w500,
    );
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'My',
          style: textStyle,
        ),
        SizedBox(
          width: 5.0,
        ),
        Text(
          'Netflix',
          style: textStyle.copyWith(
            fontWeight: FontWeight.w700,
          ),
        ),
      ],
    );
  }
}
