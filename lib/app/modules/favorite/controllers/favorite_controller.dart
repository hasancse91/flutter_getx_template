import 'package:flutter_getx_template/app/core/base_controller/base_controller.dart';
import 'package:get/get.dart';

class FavoriteController extends BaseController {
  //TODO: Implement FavoriteController

  final count = 0.obs;
  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {}
  void increment() => count.value++;
}
