import 'package:AtaAkjemal/utils/utils.dart';
import 'package:AtaAkjemal/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key, required this.guests}) : super(key: key);

  final String guests;

  final currentLanguage = 'Türkmen dili'.tr.obs;

  @override
  Widget build(context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: primaryColor,
        leading: ShowUpAnimationWidget(
          delayStart: 1,
          child: Padding(
            padding: const EdgeInsets.all(5.0),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                image: const DecorationImage(
                  image: AssetImage('assets/image/Toya.png'),
                ),
              ),
            ),
          ),
        ),
        actions: [
          Obx(
            () => ShowUpAnimationWidget(
              delayStart: 1,
              child: DropdownButtonHideUnderline(
                child: Padding(
                  padding: const EdgeInsets.only(right: 13.0),
                  child: DropdownButton(
                    style: TextStyle(
                      fontFamily: 'PoiretOne',
                      fontWeight: FontWeight.w900,
                      fontSize: Dimensions.textSize16,
                      color: dialogColor,
                    ),
                    dropdownColor: dropdownColor,
                    icon: Icon(
                      Icons.language,
                      size: Dimensions.iconSize20,
                      color: dialogColor,
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
                image: AssetImage('assets/image/1.jpg'),
              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(
                  height:
                      currentLanguage == 'Русский' ? Dimensions.sizedBox86 : Dimensions.sizedBox130,
                ),
                TextWidget(
                  delayStart: 100,
                  textColor: titleTextColor,
                  text: 'mainText',
                  fontSize: Dimensions.textSize38,
                ),
                guests != ''
                    ? Column(
                        children: [
                          SizedBox(
                            height: Dimensions.sizedBox50,
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 5.0),
                            child: TextWidget(
                              delayStart: 200,
                              textColor: titleTextColor,
                              text: guests,
                              fontSize: guests.length > 13
                                  ? Dimensions.textSize23
                                  : Dimensions.textSize30,
                            ),
                          ),
                        ],
                      )
                    : SizedBox(
                        height: Dimensions.sizedBox40,
                      ),
                SizedBox(
                  height: guests != '' ? Dimensions.sizedBox50 : Dimensions.sizedBox85,
                ),
                const SwipeDownColumn(),
                SizedBox(
                  height: guests != '' ? Dimensions.sizedBox110 : Dimensions.sizedBox125,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TextWidget(
                      delayStart: 600,
                      textColor: textColor,
                      text: 'g',
                      fontSize: Dimensions.textSize50,
                    ),
                    TextWidget(
                      delayStart: 600,
                      textColor: textColor,
                      text: '& ',
                      fontSize: Dimensions.textSize20,
                    ),
                    TextWidget(
                      delayStart: 600,
                      textColor: textColor,
                      text: 'b',
                      fontSize: Dimensions.textSize50,
                    ),
                  ],
                ),
              ],
            ),
          ),
          Divider(
            height: Dimensions.sizedBox10,
            thickness: Dimensions.sizedBox3,
            indent: Dimensions.sizedBox10,
            endIndent: Dimensions.sizedBox10,
            color: textColor,
          ),
          Container(
            width: Dimensions.screenWidth,
            height: Dimensions.screenHeight,
            decoration: const BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.fill,
                image: AssetImage('assets/image/2.jpg'),
              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(
                  height: Dimensions.sizedBox170,
                ),
                TextWidget(
                  delayStart: 0,
                  textColor: titleTextColor,
                  text: 'mainText2',
                  fontSize: Dimensions.textSize23,
                ),
                SizedBox(
                  height: Dimensions.sizedBox50,
                ),
                TextWidget(
                  delayStart: 0,
                  textColor: textColor,
                  text: 'young',
                  fontSize: Dimensions.textSize50,
                ),
                SizedBox(
                  height: Dimensions.sizedBox50,
                ),
                TextWidget(
                  delayStart: 0,
                  textColor: titleTextColor,
                  text: 'dateTime',
                  fontSize: Dimensions.textSize20,
                ),
                SizedBox(
                  height: Dimensions.sizedBox10,
                ),
                TextWidget(
                  delayStart: 0,
                  textColor: titleTextColor,
                  text: 'location',
                  fontSize: Dimensions.textSize20,
                ),
              ],
            ),
          ),
        ],
      ),
      floatingActionButton: ShowUpAnimationWidget(
        delayStart: 900,
        child: IconButton(
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
                        backgroundColor: primaryColor,
                        title: Column(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(30.0),
                                image: const DecorationImage(
                                  image: AssetImage('assets/image/ToyaGel Logo.png'),
                                ),
                              ),
                              height: Dimensions.sizedBox150,
                              width: Dimensions.sizedBox150,
                            ),
                            SizedBox(
                              height: Dimensions.sizedBox10,
                            ),
                            TextWidget(
                              delayStart: 0,
                              text: 'contact'.tr,
                              textColor: dialogColor,
                              fontSize: Dimensions.textSize18,
                            ),
                          ],
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
          color: textColor,
          icon: Icon(
            Icons.info_outline,
            size: Dimensions.iconSize30,
          ),
        ),
      ),
    );
  }
}
