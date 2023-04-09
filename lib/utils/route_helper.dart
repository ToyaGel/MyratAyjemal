import 'package:get/get.dart';
import 'package:invitation/pages/pages.dart';

class RouteHelper {
  static const String initial = '/';
  static const String gallery = '/gallery';
  static const String aboutUs = '/about_us';

  static List<GetPage> routes = [
    GetPage(
      name: initial,
      page: () => HomePage(),
    ),
    GetPage(
      name: gallery,
      page: () => GalleryPage(),
    ),
    GetPage(
      name: aboutUs,
      page: () => const AboutUsPage(),
    ),
  ];
}
