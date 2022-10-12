import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import '/app/core/base/base_controller.dart';

class SettingsController extends BaseController {
  var selectedLangCode = "en".obs;

  updateLanguage(var langCode){
    print("Tapped: $langCode");
    selectedLangCode.value = langCode;
  }

  void changeLanguage() {
    var locale = selectedLangCode.value == 'en' ? Locale('en', 'US') : Locale('bn', 'BD');
    Get.updateLocale(locale);
  }
}
