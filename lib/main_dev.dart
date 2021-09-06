import 'package:flutter/material.dart';
import 'package:flutter_getx_template/app/my_app.dart';
import 'package:flutter_getx_template/flavors/build_config.dart';
import 'package:flutter_getx_template/flavors/env_config.dart';
import 'package:flutter_getx_template/flavors/environment.dart';

void main() {
  EnvConfig devConfig = EnvConfig(
    appName: "Flutter GetX Template Dev",
    baseUrl: "https://aeon-dev-web-api.azurewebsites.net/api",
    shouldCollectCrashLog: true,
  );

  BuildConfig.instantiate(
    envType: Environment.DEVELOPMENT,
    envConfig: devConfig,
  );

  runApp(const MyApp());
}
