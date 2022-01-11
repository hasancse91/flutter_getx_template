import 'package:flutter_getx_template/app/data/local/github_local_data_source.dart';
import 'package:get/get.dart';

import '/app/core/model/github_search_query_param.dart';
import '/app/data/model/github_project_search_response.dart';
import '/app/data/remote/github_remote_data_source.dart';
import '/app/data/repository/github_repository.dart';

class GithubRepositoryImpl implements GithubRepository {
  final GithubRemoteDataSource _remoteSource =
      Get.find(tag: (GithubRemoteDataSource).toString());

  final GithubLocalDataSource _localDataSource =
      Get.find(tag: (GithubLocalDataSource).toString());

  @override
  Future<GithubProjectSearchResponse> searchProject(
      GithubSearchQueryParam queryParam) async {
    final response = await _remoteSource.searchGithubProject(queryParam);

    response.items?.forEach((element) {
      print("Item: ${element.name}");
      _localDataSource.insertGithubData(element);
    });

    return response;
  }

  @override
  Future<Item> getProject(String userName, String repositoryName) {
    return _remoteSource.getGithubProjectDetails(userName, repositoryName);
  }
}
