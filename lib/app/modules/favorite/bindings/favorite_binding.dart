import 'package:flutter_getx_template/app/modules/favorite/controllers/favorite_controller.dart';
import 'package:get/get.dart';

class FavoriteBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<FavoriteController>(
          () => FavoriteController(),
    );
  }
}
