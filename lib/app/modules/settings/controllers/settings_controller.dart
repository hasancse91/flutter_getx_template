import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../theme/theme_controller.dart';
import '/app/core/base/base_controller.dart';

class SettingsController extends BaseController {

  final ThemeController _themeController = Get.find<ThemeController>();
  final Rx<ThemeMode?> selectedThemeMode = Rx<ThemeMode?>(null);

  void changeTheme() async {
    _themeController.changeThemeMode();
    getCurrentThemeMode();
  }

  getCurrentThemeMode() async {
    final ThemeMode themeMode = _themeController.currentThemeMode.value;
    selectedThemeMode.value = themeMode;
  }
}
