import 'package:flutter/material.dart';
import 'package:flutter_getx_template/app/core/utils/theme_service.dart';
import 'package:get/get.dart';

class MyAppController extends GetxController{
  ThemeService themeService = ThemeService();
  var currentThemeMode = Rx<ThemeMode>(ThemeMode.light);

  MyAppController(){
    getCurrentThemeMode();
  }

  getCurrentThemeMode() async{
    currentThemeMode.value = await themeService.themeMode;
  }

  setCurrentThemeMode(ThemeMode themeMode){
    currentThemeMode.value = themeMode;
  }

}