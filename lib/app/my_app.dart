import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_getx_template/app/core/base/app_theme_data.dart';
import 'package:flutter_getx_template/app/core/model/theme.dart';
import 'package:flutter_getx_template/app/core/values/app_languages.dart';
import 'package:flutter_getx_template/app/data/local/preference/preference_manager.dart';
import 'package:flutter_getx_template/app/data/local/preference/preference_manager_impl.dart';
import 'package:get/get.dart';

import '/app/bindings/initial_binding.dart';
import '/app/core/values/app_colors.dart';
import '/app/routes/app_pages.dart';
import '/flavors/build_config.dart';
import '/flavors/env_config.dart';

// ignore: must_be_immutable
class MyApp extends StatefulWidget {
  MyApp({Key? key}) : super(key: key);
  bool _didLanguageSet = false;

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final EnvConfig _envConfig = BuildConfig.instance.config;
  final PreferenceManager _preference = PreferenceManagerImpl();

  @override
  Widget build(BuildContext context) {
    _localizeApp();

    return GetMaterialApp(
      title: _envConfig.appName,
      initialRoute: AppPages.INITIAL,
      initialBinding: InitialBinding(),
      getPages: AppPages.routes,
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: _getSupportedLocal(),
      theme: _getTheme(),
      debugShowCheckedModeBanner: false,
    );
  }

  ThemeData _getTheme() {
    String savedTheme = _preference.getString(
      PreferenceManager.THEME,
      defaultValue: AppTheme.SYSTEM.name,
    );

    _envConfig.logger.i("Saved Theme: $savedTheme");

    if (savedTheme == AppTheme.DARK.name) {
      return AppThemeData.getDarkTheme();
    } else if (savedTheme == AppTheme.LIGHT.name) {
      return AppThemeData.getLightTheme();
    } else {
      return _getThemeSameAsSystem();
    }
  }

  ThemeData _getThemeSameAsSystem() {
    return Get.isPlatformDarkMode
        ? AppThemeData.getDarkTheme()
        : AppThemeData.getLightTheme();
  }

  void _localizeApp() {
    String appLanguage = _preference.getString(
      PreferenceManager.LANGUAGE,
      defaultValue: Platform.localeName,
    );

    if (appLanguage.contains(AppLanguages.en.name)) {
      appLanguage = AppLanguages.en.name;
    }

    if (!widget._didLanguageSet) {
      _envConfig.logger.i("AppLanguage: $appLanguage");
      WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
        widget._didLanguageSet = true;
        Get.updateLocale(Locale(appLanguage));
      });
    }
  }

  List<Locale> _getSupportedLocal() {
    return AppLanguages.values
        .map((language) => Locale(language.name))
        .toList();
  }
}
