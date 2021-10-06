import 'package:flutter_getx_template/app/core/model/github_search_query_param.dart';
import 'package:flutter_getx_template/app/data/model/github_repo_search_response.dart';
import 'package:flutter_getx_template/app/data/remote/github_remote_data_source.dart';
import 'package:flutter_getx_template/app/data/repository/github_repository.dart';
import 'package:get/get.dart';

class GithubRepositoryImpl implements GithubRepository {
  final GithubRemoteDataSource _remoteSource =
      Get.find(tag: (GithubRemoteDataSource).toString());

  @override
  Future<GithubRepoSearchResponse> searchRepository(
      GithubSearchQueryParam queryParam) async {
    return await _remoteSource.searchGithubRepository(queryParam);
  }

  @override
  void getRepository(String userName, String repositoryName) {
    // TODO: implement getRepository
  }
}
