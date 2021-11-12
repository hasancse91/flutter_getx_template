import 'package:flutter/material.dart';
import 'package:flutter_getx_template/app/data/local/preference/preference_manager.dart';
import 'package:get/get.dart' as getx;

class ThemeService {
  static const themeModeKey = 'isDarkMode';
  static const lightThemeText = 'Light Theme';
  static const darkThemeText = 'Dark Theme';

  final PreferenceManager _preferenceManager = getx.Get.find(tag: (PreferenceManager).toString());

  // Get themeMode info from local storage and return current ThemeMode
  Future<ThemeMode> get themeMode async => await _loadThemeFromSharedPref() ? ThemeMode.dark : ThemeMode.light;

  // Load themeMode from local storage
  Future<bool> _loadThemeFromSharedPref() async{
    return await _preferenceManager.getBool(themeModeKey);
  }

  // Load isDarkMode status from local storage
  Future<bool> getCurrentThemeMode() async{
    return await _preferenceManager.getBool(themeModeKey);
  }

  // change isDarkMode status in local storage
  changeThemeMode(bool isDarkMode){
    _preferenceManager.setBool(themeModeKey, isDarkMode);
  }
}