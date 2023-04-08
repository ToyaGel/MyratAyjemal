import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:invitation/route_helper.dart';

class AboutUsPage extends StatelessWidget {
  const AboutUsPage({Key? key}) : super(key: key);

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
                      Get.offNamed(RouteHelper.initial);
                    },
                    child: Text('Главная'),
                  ),
                ),
                Expanded(
                  child: TextButton(
                    onPressed: () {
                      Get.offNamed(RouteHelper.gallery);
                    },
                    child: Text('Галерея'),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            flex: 2,
            child: Padding(
              padding: const EdgeInsets.all(5.0),
              child: Column(
                children: [
                  Container(
                    padding: EdgeInsets.symmetric(vertical: 30.0),
                    child: Image(
                      image: AssetImage('assets/image/bread.jpeg'),
                    ),
                  ),
                  Text('Yorga'),
                  Text('Хозяйственное общество'),
                  Text(
                    textAlign: TextAlign.center,
                    'Улица 1946 (Ankara) 23, Ашгабат 744000 Туркменистан',
                  ),
                  Text(
                    textAlign: TextAlign.center,
                    'Официальный сайт: yorgatravel.com \nEmail: yorga.ltd@gmail.com \nТелефон: (+993 65) 552759',
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
