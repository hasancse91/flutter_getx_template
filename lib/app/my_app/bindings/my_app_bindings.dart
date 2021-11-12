import '../controllers/my_app_controller.dart';
import 'package:get/get.dart';

class MyAppBindings extends Bindings{
  @override
  void dependencies() {
    Get.lazyPut<MyAppController>(
      () => MyAppController(),
    );
  }
}