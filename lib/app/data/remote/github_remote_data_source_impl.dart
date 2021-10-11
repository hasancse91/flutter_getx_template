import 'package:dio/src/response.dart';
import 'package:flutter_getx_template/app/core/base/base_remote_source.dart';
import 'package:flutter_getx_template/app/core/model/github_search_query_param.dart';
import 'package:flutter_getx_template/app/data/model/github_project_search_response.dart';
import 'package:flutter_getx_template/app/data/remote/github_remote_data_source.dart';
import 'package:flutter_getx_template/app/network/dio_provider.dart';

class GithubRemoteDataSourceImpl extends BaseRemoteSource
    implements GithubRemoteDataSource {
  @override
  Future<GithubProjectSearchResponse> searchGithubProject(
      GithubSearchQueryParam queryParam) async {
    var endpoint = "${DioProvider.baseUrl}/search/repositories";
    var dioCall = dioClient.get(endpoint, queryParameters: queryParam.toJson());

    try {
      var response = await callApiWithErrorParser(dioCall);

      return _parseGithubProjectSearchResponse(response);
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<Projects> getGithubProjectDetails(
      String userName, String repositoryName) async {
    var endpoint = "${DioProvider.baseUrl}/repos/$userName/$repositoryName";
    var dioCall = dioClient.get(endpoint);

    try {
      var response = await callApiWithErrorParser(dioCall);

      return _parseGithubProjectResponse(response);
    } catch (e) {
      rethrow;
    }
  }

  GithubProjectSearchResponse _parseGithubProjectSearchResponse(
      Response<dynamic> response) {
    return GithubProjectSearchResponse.fromJson(response.data);
  }

  Projects _parseGithubProjectResponse(Response<dynamic> response) {
    return Projects.fromJson(response.data);
  }
}
