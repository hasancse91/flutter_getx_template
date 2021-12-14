import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:logger/logger.dart';
import 'package:package_info_plus/package_info_plus.dart';

import '/app/my_app.dart';
import '/flavors/build_config.dart';
import '/flavors/env_config.dart';
import '/flavors/environment.dart';
import 'firebase_options.dart';

Future<void> main() async {
  EnvConfig devConfig = EnvConfig(
    appName: "Flutter GetX Template Dev",
    baseUrl: "https://api.github.com",
    shouldCollectCrashLog: true,
  );

  BuildConfig.instantiate(
    envType: Environment.DEVELOPMENT,
    envConfig: devConfig,
  );
  WidgetsFlutterBinding.ensureInitialized();
  PackageInfo packageInfo = await PackageInfo.fromPlatform();
  Logger().d(packageInfo.packageName);
  await dotenv.load(fileName: "conf/.env");
  var app = await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform(Environment.DEVELOPMENT),
  );
  FirebaseAnalytics analytics = FirebaseAnalytics.instanceFor(app: app);
  analytics.logEvent(name: "CUSTOME_EVENT", parameters: {"VAL": "VALUE1"});
  runApp(const MyApp());
}
