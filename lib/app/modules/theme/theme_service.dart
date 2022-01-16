import 'package:flutter/material.dart';
import 'package:flutter_getx_template/app/data/local/preference/preference_manager.dart';
import 'package:get/get.dart' as getx;

class ThemeService {
  static const themeModeKey = 'isDarkMode';

  final PreferenceManager _preferenceManager =
      getx.Get.find(tag: (PreferenceManager).toString());

  Future<ThemeMode> get themeMode async =>
      await _loadThemeFromSharedPref() ? ThemeMode.dark : ThemeMode.light;

  Future<bool> _loadThemeFromSharedPref() async {
    return await _preferenceManager.getBool(themeModeKey);
  }

  Future<bool> getCurrentThemeMode() async {
    return await _preferenceManager.getBool(themeModeKey);
  }

  changeThemeMode(bool isDarkMode) {
    _preferenceManager.setBool(themeModeKey, isDarkMode);
  }
}
