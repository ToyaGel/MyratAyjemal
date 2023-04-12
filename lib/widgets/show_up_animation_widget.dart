import 'package:flutter/material.dart';
import 'package:show_up_animation/show_up_animation.dart';

class ShowUpAnimationWidget extends StatelessWidget {
  const ShowUpAnimationWidget({Key? key, required this.widget}) : super(key: key);

  final Widget widget;

  @override
  Widget build(BuildContext context) {
    return ShowUpAnimation(
        delayStart: const Duration(milliseconds: 50),
        animationDuration: const Duration(milliseconds: 550),
        curve: Curves.bounceIn,
        direction: Direction.vertical,
        offset: 0.5,
        child: widget);
  }
}
