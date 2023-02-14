import 'package:flutter/material.dart';

import '../const/colors.dart';
import '../screen/mypage_map_screen.dart';
import '../screen/search_screen.dart';
import '../screen/world_map_screen.dart';

class MenuBar extends StatelessWidget {
  const MenuBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 55.0,
      width: MediaQuery.of(context).size.width - 55.0,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(60.0),
        border: Border.all(
          width: 1,
          color: LIGHT_GREY_COLOR,
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          _RenderIconButton(
            icon: Icons.public_sharp,
            onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (BuildContext context) => WorldMapScreen()));
            },
          ),
          _RenderIconButton(
            icon: Icons.search_rounded,
            onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (BuildContext context) => SearchScreen()));
            },
          ),
          _RenderIconButton(
            icon: Icons.person_pin,
            onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (BuildContext context) => MyPageMapScreen()));
            },
          ),
        ],
      ),
    );
  }
}

class _RenderIconButton extends StatelessWidget {
  final IconData icon;
  final VoidCallback onPressed;
  const _RenderIconButton({
    required this.icon,
    required this.onPressed,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(
        onPressed: onPressed,
        iconSize: 40.0,
        color: DEEP_GREY_COLOR,
        icon: Icon(icon));
  }
}
