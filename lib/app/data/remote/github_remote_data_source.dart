import 'package:flutter_getx_template/app/core/model/github_search_query_param.dart';
import 'package:flutter_getx_template/app/data/model/github_project_search_response.dart';

abstract class GithubRemoteDataSource {
  Future<GithubProjectSearchResponse> searchGithubProject(
      GithubSearchQueryParam queryParam);

  Future<Projects> getGithubProjectDetails(
      String userName, String repositoryName);
}
