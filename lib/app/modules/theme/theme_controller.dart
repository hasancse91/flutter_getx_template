import 'package:flutter/material.dart';
import 'package:flutter_getx_template/app/modules/theme/theme_service.dart';
import 'package:get/get.dart';

class ThemeController extends GetxController {
  final ThemeService themeService = ThemeService();
  final Rx<ThemeMode> currentThemeMode = Rx<ThemeMode>(ThemeMode.light);

  ThemeController() {
    getCurrentThemeMode();
  }

  void getCurrentThemeMode() async {
    currentThemeMode.value = await themeService.themeMode;
  }

  void setCurrentThemeMode(ThemeMode themeMode) {
    currentThemeMode.value = themeMode;
  }

  void changeThemeMode(){
    if(currentThemeMode.value == ThemeMode.light){
      themeService.changeThemeMode(true);
    }else {
      themeService.changeThemeMode(false);
    }
  }

}
