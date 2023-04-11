import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:invitation/utils/utils.dart';
import 'package:invitation/widgets/widgets.dart';
import 'package:show_up_animation/show_up_animation.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);

  final currentLanguage = 'Русский'.tr.obs;

  @override
  Widget build(context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(249, 246, 237, 100),
        leading: Padding(
          padding: const EdgeInsets.all(5.0),
          child: Image.asset('assets/image/ToyaGel Logo.png'),
        ),
        actions: [
          Obx(
            () => DropdownButtonHideUnderline(
              child: Padding(
                padding: const EdgeInsets.only(right: 13.0),
                child: DropdownButton(
                  style: TextStyle(
                    fontFamily: 'PoiretOne',
                    fontWeight: FontWeight.w900,
                    fontSize: Dimensions.textSize16,
                    color: Colors.black,
                  ),
                  icon: Icon(
                    Icons.language,
                    size: Dimensions.iconSize20,
                  ),
                  value: currentLanguage.value,
                  alignment: Alignment.center,
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
          ),
        ],
      ),
      body: ListView(
        children: [
          Container(
            width: Dimensions.screenWidth,
            height: Dimensions.screenHeight,
            decoration: const BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.fill,
                image: AssetImage('assets/image/background1.jpg'),
              ),
            ),
            child: ShowUpAnimation(
              delayStart: const Duration(milliseconds: 200),
              animationDuration: const Duration(milliseconds: 700),
              curve: Curves.bounceIn,
              direction: Direction.vertical,
              offset: 0.5,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(
                    height: Dimensions.sizedBox10,
                  ),
                  TextWidget(
                    textAlign: TextAlign.center,
                    text: 'mainText',
                    fontSize: Dimensions.textSize35,
                  ),
                  SizedBox(
                    height: Dimensions.sizedBox5,
                  ),
                  TextWidget(
                    textAlign: TextAlign.center,
                    text: 'dateTime',
                    fontSize: Dimensions.textSize18,
                  ),
                  TextWidget(
                    textAlign: TextAlign.center,
                    text: 'location',
                    fontSize: Dimensions.textSize18,
                  ),
                  SizedBox(
                    height: Dimensions.sizedBox420,
                  ),
                  Row(
                    children: [
                      const Expanded(
                        flex: 1,
                        child: SizedBox(),
                      ),
                      Expanded(
                        flex: 4,
                        child: TextWidget(
                          textAlign: TextAlign.left,
                          text: 'groom',
                          fontSize: Dimensions.textSize30,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      const Expanded(
                        child: SizedBox(),
                      ),
                      Expanded(
                        child: TextWidget(
                          textAlign: TextAlign.left,
                          text: 'bride',
                          fontSize: Dimensions.textSize30,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          const Divider(
            thickness: 2.0,
            height: 0.0,
            endIndent: 10.0,
            indent: 10.0,
            color: Color.fromRGBO(93, 108, 80, 100),
          ),
          Container(
            width: Dimensions.screenWidth,
            decoration: const BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.fitWidth,
                image: AssetImage('assets/image/background2.jpg'),
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(
                    height: Dimensions.sizedBox10,
                  ),
                  CarouselWidget(),
                  SizedBox(
                    height: Dimensions.sizedBox10,
                  ),
                  TextWidget(
                      text: 'contact'.tr,
                      fontSize: Dimensions.textSize30,
                      textAlign: TextAlign.center),
                  TextWidget(
                    text: 'info'.tr,
                    fontSize: Dimensions.textSize18,
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
