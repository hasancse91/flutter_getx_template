import 'package:get/get.dart';

import '../modules/web/bindings/web_binding.dart';
import '../modules/web/views/web_view.dart';
import '/app/modules/favorite/bindings/favorite_binding.dart';
import '/app/modules/favorite/views/favorite_view.dart';
import '/app/modules/home/bindings/home_binding.dart';
import '/app/modules/home/views/home_view.dart';
import '/app/modules/main/bindings/main_binding.dart';
import '/app/modules/main/views/main_view.dart';
import '/app/modules/other/bindings/other_binding.dart';
import '/app/modules/other/views/other_view.dart';
import '/app/modules/project_details/bindings/project_details_binding.dart';
import '/app/modules/project_details/views/project_details_view.dart';
import '/app/modules/settings/bindings/settings_binding.dart';
import '/app/modules/settings/views/settings_view.dart';
import '/app/modules/splash/bindings/splash_binding.dart';
import '/app/modules/splash/views/splash_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.SPLASH;

  static final routes = [
    GetPage(
      name: _Paths.SPLASH,
      page: () => SplashView(),
      binding: SplashBinding(),
      transition: Transition.fade,
    ),
    GetPage(
      name: _Paths.MAIN,
      page: () => MainView(),
      binding: MainBinding(),
      transition: Transition.fade,
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
      name: _Paths.PROJECT_DETAILS,
      page: () => ProjectDetailsView(),
      binding: ProjectDetailsBinding(),
    ),
    GetPage(
      name: _Paths.WEB,
      page: () => WebView(),
      binding: WebBinding(),
    ),
  ];
}
