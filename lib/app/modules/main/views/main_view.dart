import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_getx_template/app/modules/favorite/views/favorite_view.dart';
import 'package:flutter_getx_template/app/modules/home/views/home_view.dart';
import 'package:flutter_getx_template/app/modules/main/model/menu_code.dart';
import 'package:flutter_getx_template/app/modules/main/views/bottom_nav_bar.dart';
import 'package:flutter_getx_template/app/modules/other/views/other_view.dart';
import 'package:flutter_getx_template/app/modules/settings/views/settings_view.dart';
import 'package:get/get.dart';

import '../controllers/main_controller.dart';

class MainView extends GetView<MainController> {

  // https://blog.logrocket.com/how-to-build-a-bottom-navigation-bar-in-flutter/

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: getPageOnSelectedMenu(controller.selectedMenuCode),
      bottomNavigationBar:
          BottomNavBar(onNewMenuSelected: controller.onMenuSelected),
    );
  }

  final HomeView homeView = HomeView();
  FavoriteView? favoriteView;
  SettingsView? settingsView;

  Widget getPageOnSelectedMenu(MenuCode menuCode) {
    switch (menuCode) {
      case MenuCode.HOME:
        return homeView;
      case MenuCode.FAVORITE:
        favoriteView ??= FavoriteView();
        return favoriteView!;
      case MenuCode.SETTINGS:
        settingsView ??= SettingsView();
        return settingsView!;
      default:
        return OtherView(
          viewParam: describeEnum(menuCode),
        );
    }
  }
}
