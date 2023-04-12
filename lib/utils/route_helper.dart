import 'package:get/get.dart';
import 'package:invitation/pages/pages.dart';

class RouteHelper {
  static const String initial = '/';

  static List<GetPage> routes = [
    GetPage(
      name: initial,
      page: () => HomePage(),
    ),
  ];
}
