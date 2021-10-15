import 'package:get/get.dart';

import '/app/core/base/base_controller.dart';

class OtherController extends BaseController {
  final count = 0.obs;

  void increment() => count.value++;
}
