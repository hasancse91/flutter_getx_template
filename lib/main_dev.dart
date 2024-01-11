import 'package:flutter/material.dart';
import 'package:flutter_getx_template/app/data/local/preference/preference_manager.dart';
import 'package:get_storage/get_storage.dart';

import '/app/my_app.dart';
import '/flavors/build_config.dart';
import '/flavors/env_config.dart';
import '/flavors/environment.dart';

void main() async {
  EnvConfig devConfig = EnvConfig(
    appName: "Flutter GetX Template Dev",
    baseUrl: "https://api.github.com",
    shouldCollectCrashLog: true,
  );

  BuildConfig.instantiate(
    envType: Environment.DEVELOPMENT,
    envConfig: devConfig,
  );

  await GetStorage.init(PreferenceManager.DATABASE_NAME);

  runApp(const MyApp());
}
