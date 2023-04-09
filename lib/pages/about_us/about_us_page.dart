import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:invitation/utils/route_helper.dart';
import 'package:invitation/widgets/widgets.dart';

class AboutUsPage extends StatelessWidget {
  const AboutUsPage({Key? key}) : super(key: key);

  @override
  Widget build(context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(249, 246, 237, 100),
        actions: [
          Expanded(
            child: TextButton(
              onPressed: () {
                Get.offNamed(RouteHelper.initial);
              },
              child: TextWidget(
                text: 'home'.tr,
                fontSize: 16.0,
                textAlign: TextAlign.center,
              ),
            ),
          ),
          Expanded(
            child: TextButton(
              onPressed: () {
                Get.offNamed(RouteHelper.gallery);
              },
              child: TextWidget(
                text: 'gallery'.tr,
                fontSize: 16.0,
                textAlign: TextAlign.center,
              ),
            ),
          ),
        ],
      ),
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage('assets/image/background.png'),
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(40.0),
                image: const DecorationImage(
                  image: AssetImage('assets/image/YorgaLogo.png'),
                ),
              ),
              height: 300.0,
              width: 300.0,
            ),
            TextWidget(text: 'Yorga', fontSize: 32.0, textAlign: TextAlign.center),
            TextWidget(text: 'info'.tr, fontSize: 20.0, textAlign: TextAlign.center),
            // Text('Yorga'),
            // Text('Хозяйственное общество'),
            // Text(
            //   textAlign: TextAlign.center,
            //   'Улица 1946 (Ankara) 23, Ашгабат 744000 Туркменистан',
            // ),
            // Text(
            //   textAlign: TextAlign.center,
            //   'Официальный сайт: yorgatravel.com \nEmail: yorga.ltd@gmail.com \nТелефон: (+993 65) 552759',
            // ),
          ],
        ),
      ),
    );
  }
}
