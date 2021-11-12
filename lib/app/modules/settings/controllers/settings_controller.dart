import 'package:flutter/material.dart';
import 'package:flutter_getx_template/app/core/utils/theme_service.dart';
import 'package:get/get.dart';


import '../../../my_app/controllers/my_app_controller.dart';
import '/app/core/base/base_controller.dart';

class SettingsController extends BaseController {
  final ThemeService themeService = ThemeService();
  final Rx<bool> isCurrentThemeDarkMode = Rx<bool>(false);
  final Rx<String> currentThemeText = Rx<String>("");
  final MyAppController _myAppController = Get.find();

  changeTheme() async{
    late ThemeMode themeMode;
    themeMode = isCurrentThemeDarkMode.value ? ThemeMode.light : ThemeMode.dark;
    _myAppController.setCurrentThemeMode(themeMode);
    await themeService.changeThemeMode(!isCurrentThemeDarkMode.value);
    await getCurrentThemeMode();
  }
  
  getCurrentThemeMode() async{
    isCurrentThemeDarkMode.value = await themeService.getCurrentThemeMode();
    currentThemeText.value = isCurrentThemeDarkMode.value ? ThemeService.lightThemeText : ThemeService.darkThemeText;
  }

}