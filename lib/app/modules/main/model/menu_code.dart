import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_getx_template/app/modules/main/model/menu_item.dart';

enum MenuCode { HOME, FAVORITE, SETTINGS }

extension MenuCodeExtensions on MenuCode {
  BottomNavItem toBottomNavItem(AppLocalizations appLocalization) {
    switch (this) {
      case MenuCode.HOME:
        return BottomNavItem(
          navTitle: appLocalization.bottomNavHome,
          iconSvgName: "ic_home.svg",
          menuCode: MenuCode.HOME,
        );
      case MenuCode.FAVORITE:
        return BottomNavItem(
            navTitle: appLocalization.bottomNavFavorite,
            iconSvgName: "ic_favorite.svg",
            menuCode: MenuCode.FAVORITE);
      case MenuCode.SETTINGS:
        return BottomNavItem(
            navTitle: appLocalization.bottomNavSettings,
            iconSvgName: "ic_settings.svg",
            menuCode: MenuCode.SETTINGS);
    }
  }
}
