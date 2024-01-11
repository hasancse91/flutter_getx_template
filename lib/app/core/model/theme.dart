import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:get/get.dart';

enum AppTheme { LIGHT, DARK, SYSTEM }

extension AppThemeExtension on AppTheme {
  String getThemeName(AppLocalizations appLocalization) {
    switch (this) {
      case AppTheme.DARK:
        return appLocalization.themeDark;
      case AppTheme.LIGHT:
        return appLocalization.themeLight;
      default:
        return appLocalization.themeSystem;
    }
  }

  bool getIsDarkModeOn() {
    return Get.isDarkMode || this == AppTheme.DARK;
  }
}
