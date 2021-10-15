import '/app/modules/main/model/menu_code.dart';

class BottomNavItem {
  final String navTitle;
  final String iconSvgName;
  final MenuCode menuCode;

  const BottomNavItem(
      {required this.navTitle,
      required this.iconSvgName,
      required this.menuCode});
}
