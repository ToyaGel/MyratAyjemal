import 'package:get/get.dart';

class Controller extends GetxController {
  var count = 0.obs;
  increment() => count++;

  var name = 'Jonatas Borges'.obs;
  void change() {
    if (name == ('Jonatas Borges')) {
      name.value = 'aaaa';
    } else {
      name.value = 'Jonatas Borges';
    }
  }
}
