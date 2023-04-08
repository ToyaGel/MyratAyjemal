import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

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
      style: GoogleFonts.poiretOne(
        fontWeight: FontWeight.w900,
        fontSize: fontSize,
      ),
    );
  }
}
