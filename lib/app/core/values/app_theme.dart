import 'package:flutter/material.dart';
import '/app/core/values/app_colors.dart';

class AppTheme {
  /// 默认主题
  static var lightTheme = ThemeData(
    primarySwatch: AppColors.colorPrimarySwatch,
    visualDensity: VisualDensity.adaptivePlatformDensity,
    brightness: Brightness.light,
    primaryColor: AppColors.colorPrimary,
    textTheme: const TextTheme(
      button: TextStyle(
        color: Colors.white,
        fontSize: 20.0,
        fontWeight: FontWeight.bold,
      ),
    ),
    fontFamily: 'Roboto',
  );

  /// 暗黑主题
  static var darkTheme = ThemeData(
    primarySwatch: AppColors.colorPrimarySwatch,
    visualDensity: VisualDensity.adaptivePlatformDensity,
    brightness: Brightness.dark,
    primaryColor: AppColors.colorPrimary,
    textTheme: const TextTheme(
      button: TextStyle(
        color: Colors.white,
        fontSize: 20.0,
        fontWeight: FontWeight.bold,
      ),
    ),
    fontFamily: 'Roboto',
  );
}
