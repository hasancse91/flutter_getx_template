import 'package:flutter_getx_template/app/modules/main/model/menu_code.dart';
import 'package:flutter_getx_template/app/routes/app_pages.dart';
import 'package:get/get.dart';

class MainController extends GetxController {
  final selectedMenuCodeController = MenuCode.HOME.obs;

  MenuCode get selectedMenuCode => selectedMenuCodeController.value;

  final lifeCardUpdateController = false.obs;

  onMenuSelected(MenuCode menuCode) async {
    // selectedMenuCodeController(menuCode);
    switch (menuCode) {
      case MenuCode.HOME:
        Get.toNamed(Routes.HOME);
        break;
      case MenuCode.FAVORITE:
        Get.toNamed(Routes.FAVORITE);
        break;
      case MenuCode.SETTINGS:
        Get.toNamed(Routes.SETTINGS);
        break;
      default:
        selectedMenuCodeController(menuCode);
    }
  }
}
