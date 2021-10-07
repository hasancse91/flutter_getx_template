import 'package:get/get.dart';

import '../controllers/repo_details_controller.dart';

class RepoDetailsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<RepoDetailsController>(
      () => RepoDetailsController(),
    );
  }
}
