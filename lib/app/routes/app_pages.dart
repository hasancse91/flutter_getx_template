import 'package:get/get.dart';

import 'package:flutter_getx_template/app/modules/RepoDetails/bindings/repo_details_binding.dart';
import 'package:flutter_getx_template/app/modules/RepoDetails/views/repo_details_view.dart';
import 'package:flutter_getx_template/app/modules/favorite/bindings/favorite_binding.dart';
import 'package:flutter_getx_template/app/modules/favorite/views/favorite_view.dart';
import 'package:flutter_getx_template/app/modules/home/bindings/home_binding.dart';
import 'package:flutter_getx_template/app/modules/home/views/home_view.dart';
import 'package:flutter_getx_template/app/modules/main/bindings/main_binding.dart';
import 'package:flutter_getx_template/app/modules/main/views/main_view.dart';
import 'package:flutter_getx_template/app/modules/other/bindings/other_binding.dart';
import 'package:flutter_getx_template/app/modules/other/views/other_view.dart';
import 'package:flutter_getx_template/app/modules/settings/bindings/settings_binding.dart';
import 'package:flutter_getx_template/app/modules/settings/views/settings_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.MAIN;

  static final routes = [
    GetPage(
      name: _Paths.MAIN,
      page: () => MainView(),
      binding: MainBinding(),
    ),
    GetPage(
      name: _Paths.HOME,
      page: () => HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.FAVORITE,
      page: () => FavoriteView(),
      binding: FavoriteBinding(),
    ),
    GetPage(
      name: _Paths.SETTINGS,
      page: () => SettingsView(),
      binding: SettingsBinding(),
    ),
    GetPage(
      name: _Paths.OTHER,
      page: () => OtherView(),
      binding: OtherBinding(),
    ),
    GetPage(
      name: _Paths.REPO_DETAILS,
      page: () => RepoDetailsView(),
      binding: RepoDetailsBinding(),
    ),
  ];
}
