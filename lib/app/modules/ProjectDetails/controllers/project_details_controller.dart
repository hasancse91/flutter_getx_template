import 'package:flutter_getx_template/app/core/base/base_controller.dart';
import 'package:flutter_getx_template/app/data/model/github_project_search_response.dart';
import 'package:flutter_getx_template/app/data/repository/github_repository.dart';
import 'package:flutter_getx_template/app/modules/home/model/github_project_ui_data.dart';
import 'package:get/get.dart';

class ProjectDetailsController extends BaseController {
  final GithubRepository _repository =
      Get.find(tag: (GithubRepository).toString());

  final Rx<GithubProjectUiData> _projectUiData = GithubProjectUiData().obs;

  GithubProjectUiData get projectUiData => _projectUiData.value;

  getGithubRepository(userName, repositoryName) {
    callDataService(
      _repository.getProject(userName, repositoryName),
      onSuccess: _handleProjectDetailsResponseSuccess,
    );
  }

  _handleProjectDetailsResponseSuccess(Projects project) {
    _projectUiData(
      GithubProjectUiData(
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
