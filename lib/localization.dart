import 'package:get/get.dart';

class Localization extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {
        'en_US': {
          'GalleryPage': 'Gallery',
        },
        'ru_RU': {
          'GalleryPage': 'Галерея',
        },
        'tkm_TKM': {
          'GalleryPage': 'Suratlar',
        }
      };
}
