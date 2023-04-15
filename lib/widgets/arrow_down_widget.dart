import 'package:AtaAkjemal/utils/constants.dart';
import 'package:AtaAkjemal/widgets/widgets.dart';
import 'package:flutter/material.dart';

class ArrowDownWidget extends StatelessWidget {
  const ArrowDownWidget({
    Key? key,
    required this.delayStart,
  }) : super(key: key);

  final int delayStart;

  @override
  Widget build(BuildContext context) {
    return ShowUpAnimationWidget(
      delayStart: delayStart,
      child: const Icon(
        Icons.keyboard_arrow_down_outlined,
        color: titleTextColor,
      ),
    );
  }
}
