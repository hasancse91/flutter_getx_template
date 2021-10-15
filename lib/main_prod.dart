import 'package:flutter/material.dart';
import 'package:flutter_getx_template/app/my_app.dart';
import 'package:flutter_getx_template/flavors/build_config.dart';
import 'package:flutter_getx_template/flavors/env_config.dart';
import 'package:flutter_getx_template/flavors/environment.dart';

void main() {
  EnvConfig prodConfig = EnvConfig(
    appName: "Flutter GetX Template Prod",
    baseUrl: "https://api.github.com",
    shouldCollectCrashLog: true,
  );

  BuildConfig.instantiate(
    envType: Environment.PRODUCTION,
    envConfig: prodConfig,
  );

  runApp(const MyApp());
}
