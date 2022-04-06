import 'package:get/get.dart';

import '/app/core/base/base_controller.dart';
import '/app/core/base/paging_controller.dart';
import '/app/core/model/github_search_query_param.dart';
import '/app/data/model/github_project_search_response.dart';
import '/app/data/repository/github_repository.dart';
import '/app/modules/home/model/github_project_ui_data.dart';

class HomeController extends BaseController {
  final GithubRepository _repository =
      Get.find(tag: (GithubRepository).toString());

  final RxList<GithubProjectUiData> _githubProjectListController =
      RxList.empty();

  List<GithubProjectUiData> get projectList =>
      _githubProjectListController.toList();

  final pagingController = PagingController<GithubProjectUiData>();

  void getGithubGetxProjectList() {
    var queryParam = GithubSearchQueryParam(
      searchKeyWord: 'flutter getx template',
      pageNumber: pagingController.pageNumber,
    );

    var githubRepoSearchService = _repository.searchProject(queryParam);

    callDataService(
      githubRepoSearchService,
      onStart: pagingController.isInitialLoad ? null : () {},
      onSuccess: _handleProjectListResponseSuccess,
    );
  }

  onRefreshPage() {
    getGithubGetxProjectList();
  }

  onLoadNextPage() {
    getGithubGetxProjectList();
  }

  void _handleProjectListResponseSuccess(GithubProjectSearchResponse response) {
    List<GithubProjectUiData>? repoList = response.items
        ?.map((e) => GithubProjectUiData(
              repositoryName: e.name != null ? e.name! : "Null",
              ownerLoginName: e.owner != null ? e.owner!.login! : "Null",
              ownerAvatar: e.owner != null ? e.owner!.avatarUrl! : "",
              numberOfStar: e.stargazersCount ?? 0,
              numberOfFork: e.forks ?? 0,
              score: e.score ?? 0.0,
              watchers: e.watchers ?? 0,
              description: e.description ?? "",
            ))
        .toList();

    pagingController.appendData(repoList ?? []);

    _githubProjectListController([...pagingController.listItems]);
  }

  @override
  void onInit() {
    getGithubGetxProjectList();
    super.onInit();
  }

  @override
  void onClose() {
    _githubProjectListController.close();
    super.onClose();
  }
}
