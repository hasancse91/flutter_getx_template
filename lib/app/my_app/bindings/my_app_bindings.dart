import '../../modules/theme/theme_controller.dart';
import 'package:get/get.dart';

class MyAppBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ThemeController>(
      () => ThemeController(),
    );
  }
}
