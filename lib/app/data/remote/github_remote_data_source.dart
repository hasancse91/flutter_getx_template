import 'package:flutter_getx_template/app/core/model/github_search_query_param.dart';
import 'package:flutter_getx_template/app/data/model/github_repo_search_response.dart';

abstract class GithubRemoteDataSource {
  Future<GithubRepoSearchResponse> searchGithubRepository(
      GithubSearchQueryParam queryParam);
  void getGithubRepositoryDetails(String userName, String repositoryName);
}
