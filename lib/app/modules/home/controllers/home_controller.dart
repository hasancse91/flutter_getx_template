import 'package:flutter_getx_template/app/core/base/base_controller.dart';
import 'package:flutter_getx_template/app/core/model/github_search_query_param.dart';
import 'package:flutter_getx_template/app/data/model/github_project_search_response.dart';
import 'package:flutter_getx_template/app/data/repository/github_repository.dart';
import 'package:flutter_getx_template/app/modules/home/model/github_project_ui_data.dart';
import 'package:get/get.dart';

class HomeController extends BaseController {
  final GithubRepository _repository =
      Get.find(tag: (GithubRepository).toString());

  final RxList<GithubProjectUiData> _githubProjectController = RxList.empty();

  List<GithubProjectUiData> get projectList =>
      _githubProjectController.toList();

  void getGithubGetxProjectList() {
    callDataService(
      _repository.searchProject(
        GithubSearchQueryParam(
          searchKeyWord: 'flutter getx template',
          perPage: 10,
          pageNumber: 1,
        ),
      ),
      onSuccess: _handleProjectListResponseSuccess,
    );
  }

  void _handleProjectListResponseSuccess(GithubProjectSearchResponse response) {
    List<GithubProjectUiData> repoList = [];
    response.items?.forEach((element) {
      var project = GithubProjectUiData(
        repositoryName: element.name != null ? element.name! : "Null",
        ownerLoginName: element.owner != null ? element.owner!.login! : "Null",
        ownerAvatar: element.owner != null ? element.owner!.avatarUrl! : "",
        numberOfStar: element.stargazersCount ?? 0,
        numberOfFork: element.forks ?? 0,
        score: element.score ?? 0.0,
        watchers: element.watchers ?? 0,
        description: element.description ?? "",
      );
      repoList.add(project);
    });
    _githubProjectController(repoList);
  }
}
