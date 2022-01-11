import 'package:flutter_getx_template/app/data/local/github_local_data_source.dart';
import 'package:flutter_getx_template/app/data/local/github_local_data_source_impl.dart';
import 'package:get/get.dart';

import '/app/data/local/preference/preference_manager.dart';
import '/app/data/local/preference/preference_manager_impl.dart';

class LocalSourceBindings implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<PreferenceManager>(
      () => PreferenceManagerImpl(),
      tag: (PreferenceManager).toString(),
      fenix: true,
    );
    Get.lazyPut<GithubLocalDataSource>(
      () => GithubLocalDataSourceImpl(),
      tag: (GithubLocalDataSource).toString(),
      fenix: true,
    );
  }
}
