import '/app/core/base/base_controller.dart';
import 'package:get/get.dart';


class OtherController extends BaseController {
  final count = 0.obs;

  void increment() => count.value++;
}
