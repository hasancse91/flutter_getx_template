import 'package:flutter_getx_template/app/core/model/github_search_query_param.dart';

abstract class GithubRemoteDataSource {
  void searchGithubRepository(GithubSearchQueryParam queryParam);
  void getGithubRepositoryDetails(String userName, String repositoryName);
}