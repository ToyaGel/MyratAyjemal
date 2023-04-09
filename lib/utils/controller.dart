import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Controller extends GetxController {
  var currentLanguage = 'Русский'.obs;
  var currentLocale = Locale('tkm', 'TKM').obs;

  // var name = 'Jonatas Borges'.obs;
  // void changeLocalization(String? value) {
  //   if (value == 'Türkmen dili') {
  //     print(Get.deviceLocale);
  //     currentLanguage.value = 'Türkmen dili';
  //     currentLocale(const Locale('tkm', 'TKM'));
  //   } else if (value == 'Русский') {
  //     currentLanguage.value = 'Русский';
  //     currentLocale(const Locale('ru', 'RU'));
  //   } else {
  //     currentLanguage.value = 'English';
  //     currentLocale(const Locale('en', 'US'));
  //   }
  // }
}
