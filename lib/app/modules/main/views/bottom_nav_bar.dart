import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_getx_template/app/core/values/app_colors.dart';
import 'package:flutter_getx_template/app/modules/main/controllers/bottom_nav_controller.dart';
import 'package:flutter_getx_template/app/modules/main/model/menu_code.dart';
import 'package:flutter_getx_template/app/modules/main/model/menu_item.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class BottomNavBar extends StatelessWidget {
  final Function(MenuCode menuCode) onNewMenuSelected;

  BottomNavBar({Key? key, required this.onNewMenuSelected}) : super(key: key);
  late AppLocalizations appLocalization;

  final navController = BottomNavController();

  final Key bottomNavKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    appLocalization = AppLocalizations.of(context)!;

    Color selectedItemColor = Colors.white;
    Color unselectedItemColor = Colors.grey;
    List<BottomNavItem> navItems = _getNavItems();

    return Obx(
      () => BottomNavigationBar(
        key: bottomNavKey,
        items: navItems
            .map(
              (BottomNavItem navItem) => BottomNavigationBarItem(
                  icon: SvgPicture.asset(
                    "images/${navItem.iconSvgName}",
                    height: 24.0,
                    width: 24.0,
                    color:
                        navItems.indexOf(navItem) == navController.selectedIndex
                            ? selectedItemColor
                            : unselectedItemColor,
                  ),
                  label: navItem.navTitle,
                  tooltip: ""),
            )
            .toList(),
        showSelectedLabels: true,
        showUnselectedLabels: true,
        type: BottomNavigationBarType.fixed,
        backgroundColor: AppColors.colorAccent,
        selectedItemColor: selectedItemColor,
        unselectedItemColor: unselectedItemColor,
        currentIndex: navController.selectedIndex,
        onTap: (index) {
          navController.updateSelectedIndex(index);
          onNewMenuSelected(navItems[index].menuCode);
        },
      ),
    );
  }

  List<BottomNavItem> _getNavItems() {
    return [
      BottomNavItem(
        navTitle: appLocalization.bottomNavHome,
        iconSvgName: "ic_home.svg",
        menuCode: MenuCode.HOME,
      ),
      BottomNavItem(
          navTitle: "Favorite",
          iconSvgName: "ic_favorite.svg",
          menuCode: MenuCode.FAVORITE),
      BottomNavItem(
          navTitle: "Settings",
          iconSvgName: "ic_settings.svg",
          menuCode: MenuCode.SETTINGS)
    ];
  }
}
