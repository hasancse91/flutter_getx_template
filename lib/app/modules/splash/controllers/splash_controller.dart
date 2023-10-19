import 'package:get/get.dart';

import '/app/routes/app_pages.dart';
import '/app/core/base/base_controller.dart';

class SplashController extends BaseController {
  @override
  void onReady() {
    super.onReady();
    Future.delayed(const Duration(seconds: 2), () {
      Get.offNamed(Routes.MAIN);
    });
  }
}
