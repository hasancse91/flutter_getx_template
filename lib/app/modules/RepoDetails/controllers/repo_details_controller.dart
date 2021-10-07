import 'package:flutter_getx_template/app/core/base/base_controller.dart';
import 'package:get/get.dart';

class RepoDetailsController extends BaseController {
  //TODO: Implement RepoDetailsController

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
