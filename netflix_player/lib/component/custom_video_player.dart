import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:video_player/video_player.dart';

class CustomVideoPlayer extends StatefulWidget {
  final XFile video;
  final VoidCallback onNewVideoPressed;
  const CustomVideoPlayer({
    required this.video,
    required this.onNewVideoPressed,
    Key? key,
  }) : super(key: key);

  @override
  State<CustomVideoPlayer> createState() => _CustomVideoPlayerState();
}

class _CustomVideoPlayerState extends State<CustomVideoPlayer> {
  //controller 생성 - video_picker plugin
  //VideoPlayer 생성 (controller를 통해)
  //control 버튼들 만들기
  //slider 만들기
  VideoPlayerController? videoController;
  Duration currentPosition = Duration();
  bool showControls = false;
  @override
  void initState() {
    super.initState();
    initializeController();
  }

  @override
  void didUpdateWidget(covariant CustomVideoPlayer oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (oldWidget.video.path != widget.video.path) {
      initializeController();
    }
  }

  void initializeController() async {
    currentPosition = Duration();
    videoController = VideoPlayerController.file(
      File(widget.video.path),
    );
    await videoController!.initialize();

    videoController!.addListener(() async {
      final currentPosition = videoController!.value.position;
      setState(() {
        this.currentPosition = currentPosition;
      });
    });

    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    if (videoController == null) {
      return CircularProgressIndicator();
    }
    return AspectRatio(
      aspectRatio: videoController!.value.aspectRatio,
      child: GestureDetector(
        onTap: () {
          setState(() {
            showControls = !showControls;
          });
        },
        child: Stack(
          children: [
            VideoPlayer(
              videoController!,
            ),
            if (showControls)
              _Controls(
                onReversePressed: onReversePressed,
                onPlayPressed: onPlayPressed,
                onForwardPressed: onForwardPressed,
                isPlaying: videoController!.value.isPlaying,
              ),
            if (showControls)
              _NewVideo(
                onPressed: widget.onNewVideoPressed,
              ),
            _SliderBottom(
              currentPosition: currentPosition,
              maxPosition: videoController!.value.duration,
              onChanged: onSliderChanged,
            ),
          ],
        ),
      ),
    );
  }

  void onSliderChanged(double val) {
    setState(() {
      videoController!.seekTo(
        Duration(seconds: val.toInt()),
      );
    });
  }

  void onReversePressed() {
    //video position 을 3초 전으로 옮김
    //but 3초 미만일 때는 0초, 처음으로 setting
    final currentPosition = videoController!.value.position;
    Duration position = Duration();
    if (currentPosition.inSeconds > 3) {
      position = currentPosition - Duration(seconds: 3);
    }
    videoController!.seekTo(position);
  }

  void onPlayPressed() {
    //이미 실행중 - 중지
    //실행X - 실행
    setState(() {
      if (videoController!.value.isPlaying) {
        videoController!.pause();
      } else {
        videoController!.play();
      }
    });
  }

  void onForwardPressed() {
    //video position 을 3초 후로 옮김
    //but 전체길이 - 현재position < 3 => 전체 길이로 세팅
    final maxPosition = videoController!.value.duration;
    final currentPosition = videoController!.value.position;
    Duration position = maxPosition;

    if ((maxPosition - currentPosition).inSeconds > 3) {
      position = currentPosition + Duration(seconds: 3);
    }
    videoController!.seekTo(position);
  }
}

class _Controls extends StatelessWidget {
  final VoidCallback onReversePressed;
  final VoidCallback onPlayPressed;
  final VoidCallback onForwardPressed;
  final bool isPlaying;
  const _Controls({
    required this.onReversePressed,
    required this.onPlayPressed,
    required this.onForwardPressed,
    required this.isPlaying,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black.withOpacity(0.5),
      height: MediaQuery.of(context).size.height,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          renderIconButton(
            onReversePressed,
            Icons.rotate_left,
          ),
          renderIconButton(
            onPlayPressed,
            isPlaying ? Icons.pause : Icons.play_arrow,
          ),
          renderIconButton(
            onForwardPressed,
            Icons.rotate_right,
          ),
        ],
      ),
    );
  }
}

IconButton renderIconButton(
  VoidCallback onPressed,
  IconData iconData,
) {
  return IconButton(
    onPressed: onPressed,
    icon: Icon(iconData),
    iconSize: 30.0,
    color: Colors.white,
  );
}

class _NewVideo extends StatelessWidget {
  final VoidCallback onPressed;
  const _NewVideo({
    required this.onPressed,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      right: 0,
      child: IconButton(
        onPressed: onPressed,
        color: Colors.white,
        iconSize: 30.0,
        icon: Icon(
          Icons.photo_camera_back,
        ),
      ),
    );
  }
}

class _SliderBottom extends StatelessWidget {
  final Duration currentPosition;
  final Duration maxPosition;
  final ValueChanged<double> onChanged;
  const _SliderBottom({
    required this.currentPosition,
    required this.maxPosition,
    required this.onChanged,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final textStyle =  TextStyle(
      color: Colors.white,
    );
    return Positioned(
      bottom: 0,
      left: 0,
      right: 0,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 8.0),
        child: Row(
          children: [
            Text(
              '${currentPosition.inMinutes}: ${currentPosition.inSeconds % 60}',
              style: textStyle,
            ),
            Expanded(
              child: Slider(
                value: currentPosition.inSeconds.toDouble(),
                min: 0,
                max: maxPosition.inSeconds.toDouble(),
                onChanged: onChanged,
              ),
            ),
            Text(
              '${maxPosition.inMinutes}: ${maxPosition.inSeconds % 60}',
              style: textStyle,
            ),
          ],
        ),
      ),
    );
  }
}
