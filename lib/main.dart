import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:invitation/utils/localization.dart';
import 'package:invitation/utils/route_helper.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      initialRoute: RouteHelper.initial,
      getPages: RouteHelper.routes,
      locale: Get.deviceLocale,
      fallbackLocale: const Locale('en', 'US'),
      translations: Localization(),
      theme: _lightTheme,
    );
  }
}

ThemeData _lightTheme = ThemeData(
    colorScheme: ColorScheme.fromSwatch().copyWith(
      primary: const Color(0xFF0A0A0A),
      secondary: const Color(0xFFFFC107),
    ),
    brightness: Brightness.light,
    primaryColor: Color.fromRGBO(249, 246, 237, 100),
    buttonTheme: ButtonThemeData(
      buttonColor: Colors.red,
      disabledColor: Colors.grey,
    ));
