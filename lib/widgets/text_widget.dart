import 'package:AtaAkjemal/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TextWidget extends StatelessWidget {
  const TextWidget(
      {super.key,
      required this.text,
      required this.fontSize,
      required this.textColor,
      required this.delayStart});

  final String text;
  final double fontSize;
  final Color textColor;
  final int delayStart;

  @override
  Widget build(BuildContext context) {
    return delayStart != 0
        ? ShowUpAnimationWidget(
            delayStart: delayStart,
            child: Text(
              text.tr,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontFamily: 'PoiretOne',
                fontSize: fontSize,
                fontWeight: FontWeight.w900,
                color: textColor,
              ),
            ),
          )
        : Text(
            text.tr,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontFamily: 'PoiretOne',
              fontSize: fontSize,
              fontWeight: FontWeight.w900,
              color: textColor,
            ),
          );
  }
}
