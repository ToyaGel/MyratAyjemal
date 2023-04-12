import 'package:flutter/material.dart';

ThemeData lightTheme = ThemeData(
    colorScheme: ColorScheme.fromSwatch().copyWith(
      primary: const Color(0xFF0A0A0A),
      secondary: const Color(0xFFFFC107),
    ),
    brightness: Brightness.light,
    primaryColor: const Color.fromRGBO(222, 185, 97, 1.0),
    buttonTheme: const ButtonThemeData(
      buttonColor: Colors.red,
      disabledColor: Colors.grey,
    ));
