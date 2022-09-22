import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_getx_template/app/core/values/app_themes.dart';
import 'package:flutter_getx_template/app/modules/theme/theme_controller.dart';
import 'package:get/get.dart';

import '/app/bindings/initial_binding.dart';
import '/app/routes/app_pages.dart';
import '/flavors/build_config.dart';
import '/flavors/env_config.dart';
import '../../bindings/local_source_bindings.dart';
import '../bindings/my_app_bindings.dart';

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final EnvConfig _envConfig = BuildConfig.instance.config;
  late ThemeController _themeController;

  @override
  void initState() {
    // initialize [LocalResourceBinding] here because
    // we need to access SharedPreferences in [MyAppController]
    LocalSourceBindings().dependencies();
    MyAppBindings().dependencies();
    _themeController = Get.find<ThemeController>();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Obx(() => GetMaterialApp(
          title: _envConfig.appName,
          initialRoute: AppPages.INITIAL,
          initialBinding: InitialBinding(),
          getPages: AppPages.routes,
          localizationsDelegates: AppLocalizations.localizationsDelegates,
          supportedLocales: _getSupportedLocal(),
          theme: AppThemes.lightTheme,
          darkTheme: AppThemes.darkTheme,
          themeMode: _themeController.currentThemeMode.value,
          debugShowCheckedModeBanner: false,
        ));
  }

  List<Locale> _getSupportedLocal() {
    return [
      const Locale('en', ''),
      const Locale('bn', ''),
    ];
  }
}
