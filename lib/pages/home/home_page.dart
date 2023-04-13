import 'package:AtaAkjemal/utils/utils.dart';
import 'package:AtaAkjemal/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);

  final currentLanguage = 'Русский'.tr.obs;

  @override
  Widget build(context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(222, 185, 97, 1.0),
        leading: ShowUpAnimationWidget(
          widget: Padding(
            padding: const EdgeInsets.all(5.0),
            child: Image.asset('assets/image/ToyaGel Logo.png'),
          ),
        ),
        actions: [
          Obx(
            () => ShowUpAnimationWidget(
              widget: DropdownButtonHideUnderline(
                child: Padding(
                  padding: const EdgeInsets.only(right: 13.0),
                  child: DropdownButton(
                    style: TextStyle(
                      fontFamily: 'PoiretOne',
                      fontWeight: FontWeight.w900,
                      fontSize: Dimensions.textSize16,
                      color: Colors.black,
                    ),
                    dropdownColor: const Color.fromRGBO(223, 187, 117, 1.0),
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
                image: AssetImage('assets/image/background_e1.jpg'),
              ),
            ),
            child: ShowUpAnimationWidget(
              widget: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(
                    height: Dimensions.sizedBox130,
                  ),
                  TextWidget(
                    textAlign: TextAlign.center,
                    text: 'mainText',
                    fontSize: Dimensions.textSize38,
                  ),
                  SizedBox(
                    height: Dimensions.sizedBox10,
                  ),
                  TextWidget(
                    textAlign: TextAlign.center,
                    text: 'dateTime',
                    fontSize: Dimensions.textSize20,
                  ),
                  SizedBox(
                    height: Dimensions.sizedBox10,
                  ),
                  TextWidget(
                    textAlign: TextAlign.center,
                    text: 'location',
                    fontSize: Dimensions.textSize20,
                  ),
                  SizedBox(
                    height: Dimensions.sizedBox100,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      TextWidget(
                        textAlign: TextAlign.center,
                        text: 'groom',
                        fontSize: Dimensions.textSize38,
                      ),
                      TextWidget(
                        textAlign: TextAlign.center,
                        text: ' & ',
                        fontSize: Dimensions.textSize20,
                      ),
                      TextWidget(
                        textAlign: TextAlign.left,
                        text: 'bride',
                        fontSize: Dimensions.textSize38,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: Dimensions.sizedBox130,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        ShowUpAnimationWidget(
                          widget: IconButton(
                            onPressed: () {
                              showDialog(
                                context: context,
                                builder: (_) => AlertDialog(
                                  backgroundColor: const Color.fromRGBO(30, 30, 30, 1.0),
                                  title: TextWidget(
                                    text: 'aboutUs'.tr,
                                    textAlign: TextAlign.center,
                                    fontSize: Dimensions.textSize18,
                                  ),
                                  content: TextWidget(
                                    text: 'info'.tr,
                                    textAlign: TextAlign.center,
                                    fontSize: Dimensions.textSize16,
                                  ),
                                ),
                              );
                            },
                            alignment: Alignment.centerLeft,
                            color: const Color.fromRGBO(223, 187, 117, 100),
                            icon: const Icon(Icons.info_outline),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
      floatingActionButton: ShowUpAnimationWidget(
        widget: TextButton(
          style: TextButton.styleFrom(backgroundColor: Colors.white24),
          onPressed: () {},
          child: TextWidget(
            text: 'saveDate'.tr,
            fontSize: Dimensions.textSize20,
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}
