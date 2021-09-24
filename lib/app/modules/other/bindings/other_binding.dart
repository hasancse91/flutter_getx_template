import 'package:get/get.dart';

import '../controllers/other_controller.dart';

class OtherBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<OtherController>(
      () => OtherController(),
    );
  }
}
