import 'package:flutter_getx_template/app/core/base/base_controller.dart';
import 'package:flutter_getx_template/app/modules/home/model/github_repo_ui_data.dart';
import 'package:get/get.dart';

class HomeController extends BaseController {
  final RxList<GithubRepoUiData> _githubRepoController = RxList.empty();

  List<GithubRepoUiData> get repositoryList => _githubRepoController.toList();

  getGithubGetxRepositoryList() {
    List<GithubRepoUiData> repoList = [];
    for (int i = 0; i < 15; i++) {
      var repo = GithubRepoUiData(
          repositoryName: 'repo-name',
          ownerLoginName: 'ownerLoginName',
          ownerAvatar: 'ownerAvatar',
          numberOfStar: 10,
          numberOfFork: 4);
      repoList.add(repo);
    }
    _githubRepoController(repoList);
  }
}
