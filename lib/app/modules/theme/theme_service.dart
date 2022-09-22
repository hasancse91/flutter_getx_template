import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../data/local/preference/preference_manager.dart';

const String DARK_THEME = "dark_theme";
const String LIGHT_THEME = "light_theme";
const String SYSTEM_THEME = "system_theme";

const Map<String, ThemeMode> themeModesMap = {
  DARK_THEME: ThemeMode.dark,
  LIGHT_THEME: ThemeMode.light,
  SYSTEM_THEME: ThemeMode.system,
};

class ThemeService {
  static const THEME_MODE_KEY = 'themeMode';

  final PreferenceManager _preferenceManager =
      Get.find(tag: (PreferenceManager).toString());

  Future<ThemeMode> get themeMode async => await _loadThemeFromSharedPref();

  Future<ThemeMode> _loadThemeFromSharedPref() async {
    final String savedThemeMode =
        await _preferenceManager.getString(THEME_MODE_KEY);

    if (savedThemeMode.isEmpty) return ThemeMode.system;

    return themeModesMap[savedThemeMode]!;
  }

  setDarkMode() async {
    await _preferenceManager.setString(THEME_MODE_KEY, DARK_THEME);
  }

  setLightMode() async {
    await _preferenceManager.setString(THEME_MODE_KEY, LIGHT_THEME);
  }

  setSystemMode() async {
    await _preferenceManager.setString(THEME_MODE_KEY, SYSTEM_THEME);
  }
}
