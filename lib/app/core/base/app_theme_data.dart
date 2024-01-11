import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_getx_template/app/core/values/app_colors.dart';
import 'package:flutter_getx_template/app/core/values/app_values.dart';
import 'package:flutter_getx_template/app/core/values/text_styles.dart';

class AppThemeData {
  static ThemeData getDarkTheme() {
    return ThemeData(
      visualDensity: VisualDensity.adaptivePlatformDensity,
      brightness: Brightness.dark,
      primaryColor: AppColors.primaryDark,
      primaryColorDark: AppColors.bgCardDark,
      primaryColorLight: AppColors.primary,
      buttonTheme: const ButtonThemeData(alignedDropdown: true),
      cardColor: AppColors.bgCardDark,
      iconTheme: const IconThemeData(color: AppColors.colorWhite),
      indicatorColor: AppColors.colorWhite,
      dividerColor: AppColors.dividerDark,
      dividerTheme: const DividerThemeData(color: AppColors.dividerDark),
      hintColor: AppColors.basicGreyDark,
      dialogBackgroundColor: AppColors.bgPageDark,
      scaffoldBackgroundColor: AppColors.bgPageDark,
      textTheme: _textThemeDark,
      appBarTheme: _appBarThemeDark,
      fontFamily: _getFont(),
      colorScheme: _colorSchemeDark,
      useMaterial3: true,
      bottomNavigationBarTheme: _bottomNavigationBarThemeDataDark,
      bottomSheetTheme: _bottomSheetThemeDataDark,
      dialogTheme: _dialogThemeDark,
      popupMenuTheme: _popupMenuThemeDark,
      shadowColor: Colors.black12,
    );
  }

  static ThemeData getLightTheme() {
    return ThemeData(
      visualDensity: VisualDensity.adaptivePlatformDensity,
      brightness: Brightness.light,
      primaryColor: AppColors.primary,
      primaryColorDark: AppColors.primaryDark,
      primaryColorLight: AppColors.primary,
      cardColor: AppColors.bgCardLight,
      iconTheme: const IconThemeData(color: Colors.grey),
      indicatorColor: AppColors.colorBlack,
      buttonTheme: const ButtonThemeData(alignedDropdown: true),
      dividerColor: AppColors.divider,
      dividerTheme: const DividerThemeData(color: AppColors.divider),
      hintColor: AppColors.basicGrey,
      dialogBackgroundColor: AppColors.bgPageLight,
      scaffoldBackgroundColor: AppColors.bgPageLight,
      textTheme: _textThemeLight,
      appBarTheme: _appBarThemeLight,
      fontFamily: _getFont(),
      colorScheme: _colorSchemeLight,
      useMaterial3: true,
      bottomNavigationBarTheme: _bottomNavigationBarThemeDataLight,
      bottomSheetTheme: _bottomSheetThemeDataLight,
      dialogTheme: _dialogThemeLight,
      popupMenuTheme: _popupMenuThemeLight,
      shadowColor: Colors.black12,
    );
  }

  static BottomNavigationBarThemeData get _bottomNavigationBarThemeDataDark =>
      const BottomNavigationBarThemeData(
        backgroundColor: AppColors.bgCardDark,
        selectedItemColor: AppColors.colorWhite,
        unselectedItemColor: AppColors.lightGreyColor,
        selectedLabelStyle: labelMediumTextStyleDark,
        unselectedLabelStyle: labelMediumTextStyleDark,
      );

  static BottomNavigationBarThemeData get _bottomNavigationBarThemeDataLight =>
      const BottomNavigationBarThemeData(
        backgroundColor: AppColors.bgCardLight,
        selectedItemColor: AppColors.primary,
        unselectedItemColor: AppColors.lightGreyColor,
        selectedLabelStyle: labelMediumTextStyle,
        unselectedLabelStyle: labelMediumTextStyle,
      );

  static AppBarTheme get _appBarThemeDark => AppBarTheme(
        systemOverlayStyle: const SystemUiOverlayStyle(
          statusBarColor: AppColors.bgPageDark,
          statusBarIconBrightness: Brightness.light,
          statusBarBrightness: Brightness.dark,
        ),
        iconTheme: const IconThemeData(color: AppColors.basicGreyDark),
        backgroundColor: AppColors.bgPageDark,
        titleTextStyle: appBarTextStyleDark.copyWith(
          fontFamily: _getFont(),
        ),
      );

  static AppBarTheme get _appBarThemeLight => AppBarTheme(
        systemOverlayStyle: const SystemUiOverlayStyle(
          statusBarColor: AppColors.bgPageLight,
          statusBarIconBrightness: Brightness.dark,
          statusBarBrightness: Brightness.light,
        ),
        iconTheme: const IconThemeData(color: AppColors.basicGrey),
        backgroundColor: AppColors.bgPageLight,
        titleTextStyle: appBarTextStyle.copyWith(fontFamily: _getFont()),
      );

  static ColorScheme get _colorSchemeDark => const ColorScheme.dark(
        brightness: Brightness.dark,
        primary: AppColors.colorWhite,
        background: AppColors.bgPageDark,
        onBackground: AppColors.colorWhite,
        error: AppColors.errorColor,
        errorContainer: AppColors.errorContainerDark,
      );

  static ColorScheme get _colorSchemeLight => const ColorScheme.light(
        brightness: Brightness.light,
        primary: AppColors.primary,
        background: AppColors.bgPageLight,
        onBackground: AppColors.primary,
        error: AppColors.errorColor,
        errorContainer: AppColors.errorContainerLight,
      );

  static TextTheme get _textThemeDark => const TextTheme(
        displaySmall: displaySmallTextStyleDark,
        displayMedium: displayMediumTextStyleDark,
        displayLarge: displayLargeTextStyleDark,
        headlineSmall: headlineSmallTextStyleDark,
        headlineMedium: headlineMediumTextStyleDark,
        headlineLarge: headlineLargeTextStyleDark,
        titleSmall: titleSmallTextStyleDark,
        titleMedium: titleMediumTextStyleDark,
        titleLarge: titleLargeTextStyleDark,
        bodySmall: bodySmallTextStyleDark,
        bodyMedium: bodyMediumTextStyleDark,
        bodyLarge: bodyLargeTextStyleDark,
        labelSmall: labelSmallTextStyleDark,
        labelMedium: labelMediumTextStyleDark,
        labelLarge: labelLargeTextStyleDark,
      );

  static TextTheme get _textThemeLight => const TextTheme(
        displaySmall: displaySmallTextStyle,
        displayMedium: displayMediumTextStyle,
        displayLarge: displayLargeTextStyle,
        headlineSmall: headlineSmallTextStyle,
        headlineMedium: headlineMediumTextStyle,
        headlineLarge: headlineLargeTextStyle,
        titleSmall: titleSmallTextStyle,
        titleMedium: titleMediumTextStyle,
        titleLarge: titleLargeTextStyle,
        bodySmall: bodySmallTextStyle,
        bodyMedium: bodyMediumTextStyle,
        bodyLarge: bodyLargeTextStyle,
        labelSmall: labelSmallTextStyle,
        labelMedium: labelMediumTextStyle,
        labelLarge: labelLargeTextStyle,
      );

  static BottomSheetThemeData get _bottomSheetThemeDataLight =>
      const BottomSheetThemeData(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(AppValues.radius),
            topRight: Radius.circular(AppValues.radius),
          ),
        ),
        backgroundColor: Colors.transparent,
        shadowColor: Colors.black12,
      );

  static BottomSheetThemeData get _bottomSheetThemeDataDark =>
      const BottomSheetThemeData(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(AppValues.radius),
            topRight: Radius.circular(AppValues.radius),
          ),
        ),
        backgroundColor: Colors.transparent,
        shadowColor: Colors.black12,
      );

  static DialogTheme get _dialogThemeLight => DialogTheme(
        shadowColor: Colors.black12,
        backgroundColor: AppColors.bgCardLight,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(AppValues.smallRadius),
        ),
      );

  static DialogTheme get _dialogThemeDark => DialogTheme(
        shadowColor: Colors.black12,
        backgroundColor: AppColors.bgCardDark,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(AppValues.smallRadius),
        ),
      );

  static PopupMenuThemeData get _popupMenuThemeLight => PopupMenuThemeData(
        color: AppColors.bgPageLight,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(AppValues.radius),
        ),
        textStyle: titleMediumTextStyle,
      );

  static PopupMenuThemeData get _popupMenuThemeDark => PopupMenuThemeData(
        color: AppColors.bgPageDark,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(AppValues.radius),
        ),
        textStyle: titleMediumTextStyleDark,
      );

  static String _getFont() {
    return 'Roboto';
  }
}
