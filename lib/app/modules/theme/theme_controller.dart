import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../core/base/base_controller.dart';
import 'theme_service.dart';

class ThemeController extends BaseController {
  final ThemeService themeService = ThemeService();
  final Rx<ThemeMode> currentThemeMode = Rx<ThemeMode>(ThemeMode.system);

  ThemeController() {
    getCurrentThemeMode();
  }

  void getCurrentThemeMode() async {
    currentThemeMode.value = await themeService.themeMode;
  }

  void setDarkThemeMode() async {
    await themeService.setDarkMode();
    getCurrentThemeMode();
  }

  void setLightThemeMode() async {
    await themeService.setLightMode();
    getCurrentThemeMode();
  }

  void setSystemThemeMode() async {
    await themeService.setSystemMode();
    getCurrentThemeMode();
  }
}
