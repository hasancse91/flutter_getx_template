import 'package:flutter/material.dart';
import 'package:flutter_getx_template/app/core/base/base_view.dart';
import 'package:flutter_getx_template/app/core/values/text_styles.dart';
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
          () => Container(
            margin: EdgeInsets.symmetric(
              horizontal: 20.0,
              vertical: 20.0,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  controller.repoUiData.repositoryName,
                  style: cardTitleStyle,
                  overflow: TextOverflow.ellipsis,
                  maxLines: 1,
                ),
                _getAuthor(),
                SizedBox(
                  height: 4.0,
                ),
                _getRepoOthersView(),
                SizedBox(
                  height: 30.0,
                ),
                _getDescription(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  _getAuthor() {
    return Row(
      children: [
        CircleAvatar(
          backgroundImage: NetworkImage(controller.repoUiData.ownerAvatar),
          radius: 16.0,
        ),
        SizedBox(
          width: 6.0,
        ),
        Text(
          controller.repoUiData.ownerLoginName,
          style: cardSubtitleStyle,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
        ),
      ],
    );
  }

  _getRepoOthersView() {
    return Container(
      margin: EdgeInsets.only(
        left: 40.0,
      ),
      child: Row(
        children: [
          _getDetailsView(
            Icons.account_tree_outlined,
            controller.repoUiData.numberOfFork.toString(),
          ),
          _getDetailsView(
            Icons.star_border,
            controller.repoUiData.numberOfStar.toString(),
          ),
          _getDetailsView(
            Icons.visibility_outlined,
            controller.repoUiData.watchers.toString(),
          ),
        ],
      ),
    );
  }

  _getDetailsView(IconData iconData, String value) {
    return Expanded(
      child: Row(
        children: [
          Icon(
            iconData,
            size: 20.0,
            color: Colors.grey,
          ),
          SizedBox(
            width: 2.0,
          ),
          Text(
            value,
            style: TextStyle(color: Colors.grey),
          ),
        ],
      ),
    );
  }

  _getDescription() {
    return Expanded(
      child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Text(
          controller.repoUiData.description,
          style: TextStyle(
            fontSize: 16.0,
          ),
        ),
      ),
    );
  }
}
