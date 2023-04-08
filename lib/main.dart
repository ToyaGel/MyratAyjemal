import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:invitation/localization.dart';
import 'package:invitation/route_helper.dart';

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
    );
  }
}
