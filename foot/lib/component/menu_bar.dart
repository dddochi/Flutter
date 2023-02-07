import 'package:flutter/material.dart';

import '../const/colors.dart';

class MenuBar extends StatelessWidget {
  const MenuBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 30,
      left:5,
      right:5,
      child: Container(
        height: 55.0,
        width: MediaQuery.of(context).size.width - 55.0,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(60.0),
          border: Border.all(
            width: 1,
            color:LIGHT_GREY_COLOR,
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            _RenderIconButton(icon: Icons.public_sharp,),
            _RenderIconButton(icon: Icons.search_rounded,),
            _RenderIconButton(icon: Icons.person_pin,),
          ],
        ),
      ),
    );
  }
}
class _RenderIconButton extends StatelessWidget {
  final IconData icon;
  const _RenderIconButton({required this.icon, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(
        onPressed: () {},
        iconSize: 40.0,
        color: DEEP_GREY_COLOR,
        icon: Icon(icon));
  }
}