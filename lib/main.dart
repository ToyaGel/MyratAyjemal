import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:invitation/utils/localization.dart';
import 'package:invitation/utils/route_helper.dart';

import 'utils/constants.dart';

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
      theme: lightTheme,
    );
  }
}
