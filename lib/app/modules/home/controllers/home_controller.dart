import 'package:flutter_getx_template/app/core/base/base_controller.dart';
import 'package:flutter_getx_template/app/core/model/github_search_query_param.dart';
import 'package:flutter_getx_template/app/data/repository/github_repository.dart';
import 'package:flutter_getx_template/app/modules/home/model/github_repo_ui_data.dart';
import 'package:get/get.dart';

class HomeController extends BaseController {
  final GithubRepository _repository =
      Get.find(tag: (GithubRepository).toString());

  final RxList<GithubRepoUiData> _githubRepoController = RxList.empty();

  List<GithubRepoUiData> get repositoryList => _githubRepoController.toList();

  getGithubGetxRepositoryList() {
    _repository
        .searchRepository(
      GithubSearchQueryParam(
        searchKeyWord: 'test',
        perPage: 10,
        pageNumber: 1,
      ),
    )
        .then((response) {
      List<GithubRepoUiData> repoList = [];
      response.items?.forEach((element) {
        var repo = GithubRepoUiData(
            repositoryName: element.name != null ? element.name! : "Null",
            ownerLoginName:
                element.owner != null ? element.owner!.login! : "Null",
            ownerAvatar: element.owner != null ? element.owner!.avatarUrl! : "",
            numberOfStar: 10,
            numberOfFork: 4);
        repoList.add(repo);
      });
      _githubRepoController(repoList);
      logger.d("Repo response: ${response.totalCount}");
    });
  }
}
