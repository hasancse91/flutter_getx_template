import 'package:flutter_getx_template/app/modules/main/model/menu_code.dart';
import 'package:get/get.dart';

class MainController extends GetxController {
  final _selectedMenuCodeController = MenuCode.HOME.obs;

  MenuCode get selectedMenuCode => _selectedMenuCodeController.value;

  final lifeCardUpdateController = false.obs;

  onMenuSelected(MenuCode menuCode) async {
    _selectedMenuCodeController(menuCode);
  }
}
