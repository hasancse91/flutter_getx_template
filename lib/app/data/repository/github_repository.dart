import 'package:flutter_getx_template/app/core/model/github_search_query_param.dart';

abstract class GithubRepository {
  void searchRepository(GithubSearchQueryParam queryParam);
  void getRepository(String userName, String repositoryName);
}