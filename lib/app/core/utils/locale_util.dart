import 'dart:ui';

import 'package:devicelocale/devicelocale.dart';

class LocaleUtil {
  LocaleUtil._internal();

  static late Locale _systemLocale;

  static Future<void> init() async {
    _systemLocale = await getSystemLocaleAsync();
  }

  static Locale getSystemLocale() {
    return _systemLocale;
  }

  static Future<Locale> getSystemLocaleAsync() async {
    String locale = await Devicelocale.currentLocale ?? "";
    var array = locale.split("_");
    if (array.length > 1) {
      return Locale(array[0], array[1]);
    }
    return const Locale("en", "us");
  }
}
