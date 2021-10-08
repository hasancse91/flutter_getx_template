import 'package:flutter/material.dart';
import 'package:flutter_getx_template/app/core/base/base_view.dart';
import 'package:flutter_getx_template/app/core/widget/custom_app_bar.dart';
import 'package:flutter_getx_template/app/modules/home/model/github_repo_ui_data.dart';
import 'package:get/get.dart';

import '../controllers/repo_details_controller.dart';

class RepoDetailsView extends BaseView<RepoDetailsController> {
  GithubRepoUiData? dataModel;

  @override
  PreferredSizeWidget? appBar(BuildContext context) {
    return CustomAppBar(
      appBarTitleText: 'Repository details',
      isBackButtonEnabled: true,
    );
  }

  @override
  Widget body(BuildContext context) {
    if (ModalRoute.of(context) != null) {
      dataModel =
          ModalRoute.of(context)!.settings.arguments as GithubRepoUiData;
      if (dataModel != null) {
        controller.getGithubRepository(
          dataModel!.ownerLoginName,
          dataModel!.repositoryName,
        );
      }
    }

    return Scaffold(
      body: Center(
        child: Obx(
          () => Text(
            controller.repoUiData.repositoryName,
            style: TextStyle(fontSize: 20),
          ),
        ),
      ),
    );
  }
}
