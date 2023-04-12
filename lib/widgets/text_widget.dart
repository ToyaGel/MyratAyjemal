import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TextWidget extends StatelessWidget {
  const TextWidget(
      {super.key, required this.text, required this.fontSize, required this.textAlign});

  final String text;
  final double fontSize;
  final TextAlign textAlign;

  @override
  Widget build(BuildContext context) {
    return Text(
      text.tr,
      textAlign: textAlign,
      style: TextStyle(
        fontFamily: 'PoiretOne',
        fontSize: fontSize,
        fontWeight: FontWeight.w900,
        color: const Color.fromRGBO(223, 187, 117, 100),
      ),
    );
  }
}
