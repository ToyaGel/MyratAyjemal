import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:invitation/route_helper.dart';

class GalleryPage extends StatelessWidget {
  const GalleryPage({Key? key}) : super(key: key);

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
                      Get.offNamed(RouteHelper.aboutUs);
                    },
                    child: Text('О нас'),
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
            child: Center(child: Text('Carousel Slider')),
          ),
        ],
      ),
    );
  }
}
