import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:invitation/route_helper.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);

  var currentLanguage = 'English'.obs;

  @override
  Widget build(context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: TextButton(
                    onPressed: () {
                      Get.toNamed(RouteHelper.gallery);
                    },
                    child: Text('GalleryPage'.tr),
                  ),
                ),
                Expanded(
                  child: TextButton(
                    onPressed: () {
                      Get.toNamed(RouteHelper.aboutUs);
                    },
                    child: Text('О насссс'),
                  ),
                ),
                Expanded(
                  child: DropdownButtonHideUnderline(
                    child: DropdownButton(
                      icon: Icon(Icons.language),
                      alignment: AlignmentDirectional.centerEnd,
                      value: currentLanguage.value,
                      onChanged: (String? value) {
                        if (value == 'Türkmen dili') {
                          currentLanguage.value = 'Türkmen dili';
                          Get.updateLocale(const Locale('tkm', 'TKM'));
                        } else if (value == 'Русский') {
                          currentLanguage.value = 'Русский';
                          Get.updateLocale(const Locale('ru', 'RU'));
                        } else {
                          currentLanguage.value = 'English';
                          Get.updateLocale(const Locale('en', 'US'));
                        }
                      },
                      items: [
                        'Türkmen dili',
                        'English',
                        'Русский',
                      ].map<DropdownMenuItem<String>>((String value) {
                        return DropdownMenuItem(
                          value: value,
                          child: Text(value),
                        );
                      }).toList(),
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 150.0,
          ),
          Expanded(
            flex: 2,
            child: Column(
              children: [
                Text('Любовь на всю жизнь'),
                Text('Алиса и Роман'),
                Text('20 сентября 2023 г. | 18:00'),
                Text('Часовня св. Петра'),
                Text('Прием в отеле "Звезда"'),
                Text('Звоните Тарасу: +99312345678'),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
