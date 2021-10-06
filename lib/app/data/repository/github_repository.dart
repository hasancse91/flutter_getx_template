import 'package:flutter_getx_template/app/core/model/github_search_query_param.dart';
import 'package:flutter_getx_template/app/data/model/github_repo_search_response.dart';

abstract class GithubRepository {
  Future<GithubRepoSearchResponse> searchRepository(
      GithubSearchQueryParam queryParam);
  void getRepository(String userName, String repositoryName);
}
