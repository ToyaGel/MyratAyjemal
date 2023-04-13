import 'package:AtaAkjemal/utils/utils.dart';
import 'package:AtaAkjemal/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);

  final currentLanguage = 'Türkmen dili'.tr.obs;

  @override
  Widget build(context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: primaryColor,
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
                    dropdownColor: dropdownColor,
                    icon: Icon(
                      Icons.language,
                      size: Dimensions.iconSize20,
                      color: Colors.black54,
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
                    height: Dimensions.sizedBox180,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        ShowUpAnimationWidget(
                          widget: IconButton(
                            onPressed: () {
                              showDialog(
                                context: context,
                                builder: (context) => ScaffoldMessenger(
                                  child: Builder(
                                    builder: (context) => Scaffold(
                                      backgroundColor: Colors.transparent,
                                      body: GestureDetector(
                                        behavior: HitTestBehavior.opaque,
                                        onTap: () => Navigator.of(context).pop(),
                                        child: AlertDialog(
                                          backgroundColor: dialogColor,
                                          title: TextWidget(
                                            text: 'contact'.tr,
                                            textAlign: TextAlign.center,
                                            fontSize: Dimensions.textSize18,
                                          ),
                                          content: Column(
                                            mainAxisSize: MainAxisSize.min,
                                            children: [
                                              const DialogTextButton(
                                                text: 'email',
                                                copiedText: 'toychakylyklary@gmail.com',
                                              ),
                                              SizedBox(
                                                height: Dimensions.sizedBox10,
                                              ),
                                              const DialogTextButton(
                                                text: 'tel',
                                                copiedText: '+99363581010',
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              );
                            },
                            alignment: Alignment.centerLeft,
                            color: primaryColor,
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
    );
  }
}
