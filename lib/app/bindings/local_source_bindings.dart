import 'package:flutter_getx_template/app/data/local/preference/preference_manager.dart';
import 'package:flutter_getx_template/app/data/local/preference/preference_manager_impl.dart';
import 'package:get/get.dart';

class LocalSourceBindings implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<PreferenceManager>(
      () => PreferenceManagerImpl(),
      tag: (PreferenceManager).toString(),
      fenix: true,
    );
  }
}
