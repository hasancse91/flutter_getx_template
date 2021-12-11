import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

import '/app/my_app.dart';
import '/flavors/build_config.dart';
import '/flavors/env_config.dart';
import '/flavors/environment.dart';
import 'firebase_options.dart';

void main() async {
  EnvConfig prodConfig = EnvConfig(
    appName: "Flutter GetX Template Prod",
    baseUrl: "https://api.github.com",
    shouldCollectCrashLog: true,
  );

  BuildConfig.instantiate(
    envType: Environment.PRODUCTION,
    envConfig: prodConfig,
  );
  WidgetsFlutterBinding.ensureInitialized();
  await dotenv.load(fileName: "conf/.env");
  await Firebase.initializeApp(
    name: "flutter-getx-template",
    options: DefaultFirebaseOptions.currentPlatform(Environment.PRODUCTION),
  );

  runApp(const MyApp());
}
