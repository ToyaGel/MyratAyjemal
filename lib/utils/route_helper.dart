import 'package:AtaAkjemal/pages/home/home_page.dart';
import 'package:get/get.dart';

class RouteHelper {
  static const String initial = '/';
  static const String vladimir = '/vladimir';
  static const String gulnar = '/gulnar';
  static const String vitaliy = '/vitaliy';
  static const String dasha = '/dasha';
  static const String anna = '/anna';
  static const String maral = '/maral';
  static const String lena = '/lena';
  static const String aynabat = '/aynabat';
  static const String ruslan = '/ruslan';
  static const String mekan = '/mekan';
  static const String arslan = '/arslan';
  static const String christina = '/christina';
  static const String ania = '/ania';
  static const String oksana = '/oksana';
  static const String guncha = '/guncha';
  static const String jemal = '/jemal';
  static const String bibi = '/bibi';
  static const String atash = '/atash';
  static const String guvanch = '/guvanch';
  static const String hudayberdi = '/hudayberdi';
  static const String katya = '/katya';
  static const String mahym = '/mahym';
  static const String shirin = '/shirin';
  static const String tavus = '/tavus';
  static const String yazmurad = '/yazmurad';
  static const String lyalya = '/lyalya';
  static const String serdar = '/serdar';
  static const String aykhan = '/aykhan';
  static const String olya = '/olya';
  static const String muhammet = '/muhammet';
  static const String atajan = '/atajan';
  static const String daria = '/daria';

  static const String didar = '/didar';
  static const String esen = '/esen';
  static const String khoshgeldi = '/khoshgeldi';
  static const String bayram = '/bayram';

  static List<GetPage> routes = [
    GetPage(
      name: initial,
      page: () => HomePage(
        guests: '',
      ),
    ),
    GetPage(
      name: vladimir,
      page: () => HomePage(
        guests: 'vladimir',
      ),
    ),
    GetPage(
      name: gulnar,
      page: () => HomePage(
        guests: 'gulnar',
      ),
    ),
    GetPage(
      name: vitaliy,
      page: () => HomePage(
        guests: 'vitaliy',
      ),
    ),
    GetPage(
      name: dasha,
      page: () => HomePage(
        guests: 'dasha',
      ),
    ),
    GetPage(
      name: anna,
      page: () => HomePage(
        guests: 'anna',
      ),
    ),
    GetPage(
      name: maral,
      page: () => HomePage(
        guests: 'maral',
      ),
    ),
    GetPage(
      name: lena,
      page: () => HomePage(
        guests: 'lena',
      ),
    ),
    GetPage(
      name: aynabat,
      page: () => HomePage(
        guests: 'aynabat',
      ),
    ),
    GetPage(
      name: ruslan,
      page: () => HomePage(
        guests: 'ruslan',
      ),
    ),
    GetPage(
      name: mekan,
      page: () => HomePage(
        guests: 'mekan',
      ),
    ),
    GetPage(
      name: arslan,
      page: () => HomePage(
        guests: 'arslan',
      ),
    ),
    GetPage(
      name: christina,
      page: () => HomePage(
        guests: 'сhristina',
      ),
    ),
    GetPage(
      name: ania,
      page: () => HomePage(
        guests: 'ania',
      ),
    ),
    GetPage(
      name: oksana,
      page: () => HomePage(
        guests: 'oksana',
      ),
    ),
    GetPage(
      name: guncha,
      page: () => HomePage(
        guests: 'guncha',
      ),
    ),
    GetPage(
      name: bibi,
      page: () => HomePage(
        guests: 'bibi',
      ),
    ),
    GetPage(
      name: jemal,
      page: () => HomePage(
        guests: 'jemal',
      ),
    ),
    GetPage(
      name: atash,
      page: () => HomePage(
        guests: 'atash',
      ),
    ),
    GetPage(
      name: guvanch,
      page: () => HomePage(
        guests: 'guvanch',
      ),
    ),
    GetPage(
      name: hudayberdi,
      page: () => HomePage(
        guests: 'hudayberdi',
      ),
    ),
    GetPage(
      name: katya,
      page: () => HomePage(
        guests: 'katya',
      ),
    ),
    GetPage(
      name: mahym,
      page: () => HomePage(
        guests: 'mahym',
      ),
    ),
    GetPage(
      name: shirin,
      page: () => HomePage(
        guests: 'shirin',
      ),
    ),
    GetPage(
      name: tavus,
      page: () => HomePage(
        guests: 'tavus',
      ),
    ),
    GetPage(
      name: yazmurad,
      page: () => HomePage(
        guests: 'yazmurad',
      ),
    ),
    GetPage(
      name: lyalya,
      page: () => HomePage(
        guests: 'lyalya',
      ),
    ),
    GetPage(
      name: serdar,
      page: () => HomePage(
        guests: 'serdar',
      ),
    ),
    GetPage(
      name: aykhan,
      page: () => HomePage(
        guests: 'aykhan',
      ),
    ),
    GetPage(
      name: olya,
      page: () => HomePage(
        guests: 'olya',
      ),
    ),
    GetPage(
      name: muhammet,
      page: () => HomePage(
        guests: 'muhammet',
      ),
    ),
    GetPage(
      name: atajan,
      page: () => HomePage(
        guests: 'atajan',
      ),
    ),
    GetPage(
      name: daria,
      page: () => HomePage(
        guests: 'daria',
      ),
    ),
    GetPage(
      name: didar,
      page: () => HomePage(
        guests: 'didar',
      ),
    ),
    GetPage(
      name: bayram,
      page: () => HomePage(
        guests: 'bayram',
      ),
    ),
    GetPage(
      name: esen,
      page: () => HomePage(
        guests: 'esen',
      ),
    ),
    GetPage(
      name: khoshgeldi,
      page: () => HomePage(
        guests: 'khoshgeldi',
      ),
    ),
  ];
}
