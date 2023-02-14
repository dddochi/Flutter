import 'package:flutter/material.dart';

import '../screen/mypage_category_screen.dart';
import '../screen/mypage_map_screen.dart';

class ModeIcon extends StatefulWidget {
  final IconData modeIcon;
  final VoidCallback onPressed;
  const ModeIcon({
    required this.modeIcon,
    required this.onPressed,
    Key? key,
  }) : super(key: key);

  @override
  State<ModeIcon> createState() => _ModeIconState();
}

class _ModeIconState extends State<ModeIcon> {
  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: widget.onPressed,
          /*() {

        if (widget.modeIcon == Icons.join_left_rounded) {
          Navigator.of(context).push(MaterialPageRoute(
              builder: (BuildContext context) => MyPageCategoryScreen()));
        }
        if (widget.modeIcon == Icons.join_right_rounded) {
          Navigator.of(context).push(MaterialPageRoute(
              builder: (BuildContext context) => MyPageMapScreen()));
        }


      }

           */

      iconSize: 30.0,
      icon: Icon(widget.modeIcon),
    );
  }
}
