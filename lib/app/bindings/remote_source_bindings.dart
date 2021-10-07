import 'package:flutter_getx_template/app/data/remote/github_remote_data_source.dart';
import 'package:flutter_getx_template/app/data/remote/github_remote_data_source_impl.dart';
import 'package:get/get.dart';

class RemoteSourceBindings implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<GithubRemoteDataSource>(
      () => GithubRemoteDataSourceImpl(),
      tag: (GithubRemoteDataSource).toString(),
    );
  }
}
