import 'package:flutter/material.dart';

const Color primaryColor = Color.fromRGBO(222, 185, 97, 1.0);
const Color dropdownColor = Color.fromRGBO(230, 181, 91, 1.0);
const Color dialogColor = Color.fromRGBO(66, 66, 66, 1.0);

ThemeData themeData = ThemeData(
  toggleableActiveColor: primaryColor,
  visualDensity: VisualDensity.adaptivePlatformDensity,
  colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.amber)
      .copyWith(secondary: primaryColor, brightness: Brightness.dark),
);
