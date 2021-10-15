import '/app/modules/other/controllers/other_controller.dart';
import 'package:get/get.dart';

class OtherBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<OtherController>(
      () => OtherController(),
    );
  }
}
