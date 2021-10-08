import 'package:dio/src/response.dart';
import 'package:flutter_getx_template/app/core/base/base_remote_source.dart';
import 'package:flutter_getx_template/app/core/model/github_search_query_param.dart';
import 'package:flutter_getx_template/app/data/model/github_repo_search_response.dart';
import 'package:flutter_getx_template/app/data/remote/github_remote_data_source.dart';
import 'package:flutter_getx_template/app/network/dio_provider.dart';

class GithubRemoteDataSourceImpl extends BaseRemoteSource
    implements GithubRemoteDataSource {
  @override
  Future<GithubRepoSearchResponse> searchGithubRepository(
      GithubSearchQueryParam queryParam) async {
    var endpoint = "${DioProvider.baseUrl}/search/repositories";
    var dioCall = dioClient.get(endpoint, queryParameters: queryParam.toJson());

    try {
      var response = await callApiWithErrorParser(dioCall);

      return _parseGithubSearchResponse(response);
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<Projects> getGithubRepositoryDetails(
      String userName, String repositoryName) async {
    var endpoint = "${DioProvider.baseUrl}/repos/$userName/$repositoryName";
    var dioCall = dioClient.get(endpoint);

    try {
      var response = await callApiWithErrorParser(dioCall);

      return _parseGithubRepositoryResponse(response);
    } catch (e) {
      rethrow;
    }
  }

  GithubRepoSearchResponse _parseGithubSearchResponse(
      Response<dynamic> response) {
    return GithubRepoSearchResponse.fromJson(response.data);
  }

  Projects _parseGithubRepositoryResponse(Response<dynamic> response) {
    return Projects.fromJson(response.data);
  }
}
