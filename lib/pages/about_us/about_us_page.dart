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
        backgroundColor: const Color.fromRGBO(249, 246, 237, 100),
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
        decoration: const BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage('assets/image/background2.jpg'),
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(
              height: 300.0,
              width: 300.0,
            ),
            const TextWidget(text: 'Yorga', fontSize: 32.0, textAlign: TextAlign.center),
            TextWidget(text: 'info'.tr, fontSize: 20.0, textAlign: TextAlign.center),
          ],
        ),
      ),
    );
  }
}
