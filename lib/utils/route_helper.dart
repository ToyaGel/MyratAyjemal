import 'package:AtaAkjemal/pages/home/home_page.dart';
import 'package:get/get.dart';

class RouteHelper {
  static const String initial = '/';
  static const String saparov = '/saparov';
  static const String meredov = '/meredov';

  static List<GetPage> routes = [
    GetPage(
      name: initial,
      page: () => HomePage(
        guests: '',
      ),
    ),
    GetPage(
      name: saparov,
      page: () => HomePage(
        guests: 'saparov',
      ),
    ),
    GetPage(
      name: meredov,
      page: () => HomePage(
        guests: 'meredov',
      ),
    ),
  ];
}
