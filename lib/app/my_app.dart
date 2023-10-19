import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '/generated/locales.g.dart';
import '/app/bindings/initial_binding.dart';

import '/app/core/values/app_theme.dart';
import '/app/core/utils/utils.dart';
import '/app/routes/app_pages.dart';
import '/flavors/build_config.dart';
import '/flavors/env_config.dart';

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final EnvConfig _envConfig = BuildConfig.instance.config;

  @override
  Widget build(BuildContext context) {
    return ToastUtil.init(
      GetMaterialApp(
        title: _envConfig.appName,
        initialRoute: AppPages.INITIAL,
        initialBinding: InitialBinding(),
        getPages: AppPages.routes,
        translationsKeys: AppTranslation.translations,
        locale: const Locale('en', 'US'),
        theme: AppTheme.lightTheme,
        darkTheme: AppTheme.darkTheme,
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}
