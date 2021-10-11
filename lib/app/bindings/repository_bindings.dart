import 'package:flutter_getx_template/app/data/repository/github_repository.dart';
import 'package:flutter_getx_template/app/data/repository/github_repository_impl.dart';
import 'package:get/get.dart';

class RepositoryBindings implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<GithubRepository>(
      () => GithubRepositoryImpl(),
      tag: (GithubRepository).toString(),
    );
  }
}
