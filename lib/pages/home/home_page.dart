import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:invitation/route_helper.dart';
import 'package:invitation/widgets/widgets.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);

  var currentLanguage = 'Русский'.tr.obs;

  @override
  Widget build(context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(249, 246, 237, 100),
        actions: [
          Expanded(
            child: TextButton(
              onPressed: () {
                Get.toNamed(RouteHelper.gallery);
              },
              child: TextWidget(
                textAlign: TextAlign.center,
                text: 'gallery',
                fontSize: 16.0,
              ),
            ),
          ),
          Expanded(
            child: TextButton(
              onPressed: () {
                Get.toNamed(RouteHelper.aboutUs);
              },
              child: TextWidget(
                textAlign: TextAlign.center,
                text: 'aboutUs',
                fontSize: 16.0,
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(right: 13.0),
              child: Obx(
                () => DropdownButtonHideUnderline(
                  child: DropdownButton(
                    style: GoogleFonts.poiretOne(
                      fontWeight: FontWeight.w900,
                      fontSize: 16.0,
                      color: Colors.black,
                    ),
                    icon: Icon(
                      Icons.language,
                      size: 20.0,
                    ),
                    alignment: AlignmentDirectional.centerEnd,
                    value: currentLanguage.value,
                    onChanged: (String? value) {
                      if (value == 'Türkmen dili') {
                        print(Get.deviceLocale);
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
            ),
          ),
        ],
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        decoration: const BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage('assets/image/homePageBackground.png'),
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(
              height: 10.0,
            ),
            TextWidget(
              textAlign: TextAlign.center,
              text: 'mainText',
              fontSize: 35.0,
            ),
            SizedBox(
              height: 5.0,
            ),
            TextWidget(
              textAlign: TextAlign.center,
              text: 'dateTime',
              fontSize: 18.0,
            ),
            TextWidget(
              textAlign: TextAlign.center,
              text: 'location',
              fontSize: 18.0,
            ),
            SizedBox(
              height: 400.0,
            ),
            Row(
              children: [
                Expanded(
                  flex: 1,
                  child: SizedBox(),
                ),
                Expanded(
                  flex: 4,
                  child: TextWidget(
                    textAlign: TextAlign.left,
                    text: 'groom',
                    fontSize: 32.0,
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Expanded(
                  child: SizedBox(),
                ),
                Expanded(
                  child: TextWidget(
                    textAlign: TextAlign.left,
                    text: 'bride',
                    fontSize: 32.0,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
