import 'package:flutter/material.dart';

import 'app_colors.dart';

class AppThemes {
  // light theme configurations
  static ThemeData get lightTheme {
    return ThemeData(
      primarySwatch: AppColors.colorPrimarySwatch,
      visualDensity: VisualDensity.adaptivePlatformDensity,
      brightness: Brightness.light,
      primaryColor: AppColors.colorPrimary,
      canvasColor: AppColors.canvasColor,
      cardColor: AppColors.canvasColor,
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

  // dark theme configurations
  static ThemeData get darkTheme {
    return ThemeData(
      primarySwatch: AppColors.colorPrimarySwatch,
      visualDensity: VisualDensity.adaptivePlatformDensity,
      brightness: Brightness.dark,
      primaryColor: AppColors.colorPrimary,
      canvasColor: AppColors.canvasColorDark,
      cardColor: AppColors.canvasColorDark,
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
}