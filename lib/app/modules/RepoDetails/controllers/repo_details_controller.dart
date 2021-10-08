import 'package:flutter_getx_template/app/core/base/base_controller.dart';
import 'package:flutter_getx_template/app/data/model/github_repo_search_response.dart';
import 'package:flutter_getx_template/app/data/repository/github_repository.dart';
import 'package:flutter_getx_template/app/modules/home/model/github_repo_ui_data.dart';
import 'package:get/get.dart';

class RepoDetailsController extends BaseController {
  final GithubRepository _repository =
      Get.find(tag: (GithubRepository).toString());

  final Rx<GithubRepoUiData> _repoUiData = GithubRepoUiData().obs;

  GithubRepoUiData get repoUiData => _repoUiData.value;

  getGithubRepository(userName, repositoryName) {
    callDataService(
      _repository.getRepository(userName, repositoryName),
      onSuccess: _handleRepositoryResponseSuccess,
    );
  }

  _handleRepositoryResponseSuccess(Projects project) {
    _repoUiData(
      GithubRepoUiData(
        repositoryName: project.name != null ? project.name! : "Null",
        ownerLoginName: project.owner != null ? project.owner!.login! : "Null",
        ownerAvatar: project.owner != null ? project.owner!.avatarUrl! : "",
        numberOfStar: project.stargazersCount ?? 0,
        numberOfFork: project.forks ?? 0,
        score: project.score ?? 0.0,
        watchers: project.watchers ?? 0,
        description: project.description ?? "",
      ),
    );
  }
}
