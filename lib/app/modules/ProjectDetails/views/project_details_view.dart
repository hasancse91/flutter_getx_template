import 'package:flutter/material.dart';
import 'package:flutter_getx_template/app/core/base/base_view.dart';
import 'package:flutter_getx_template/app/core/values/text_styles.dart';
import 'package:flutter_getx_template/app/core/widget/asset_image_view.dart';
import 'package:flutter_getx_template/app/core/widget/custom_app_bar.dart';
import 'package:flutter_getx_template/app/modules/home/model/github_project_ui_data.dart';
import 'package:get/get.dart';

import '../controllers/project_details_controller.dart';

class ProjectDetailsView extends BaseView<ProjectDetailsController> {
  GithubProjectUiData? dataModel;

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
          ModalRoute.of(context)!.settings.arguments as GithubProjectUiData;
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
          () => _getView(),
        ),
      ),
    );
  }

  _getView() {
    if (controller.projectUiData.repositoryName.isEmpty) {
      return Container();
    } else {
      return Container(
        margin: EdgeInsets.symmetric(
          horizontal: 20.0,
          vertical: 20.0,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              controller.projectUiData.repositoryName,
              style: cardTitleStyle,
              overflow: TextOverflow.ellipsis,
              maxLines: 1,
            ),
            _getAuthor(),
            SizedBox(
              height: 4.0,
            ),
            _getProjectOthersView(),
            SizedBox(
              height: 30.0,
            ),
            _getDescription(),
          ],
        ),
      );
    }
  }

  _getAuthor() {
    return Row(
      children: [
        CircleAvatar(
          backgroundImage: NetworkImage(controller.projectUiData.ownerAvatar),
          radius: 16.0,
        ),
        SizedBox(
          width: 6.0,
        ),
        Text(
          controller.projectUiData.ownerLoginName,
          style: cardSubtitleStyle,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
        ),
      ],
    );
  }

  _getProjectOthersView() {
    return Container(
      margin: EdgeInsets.only(
        left: 40.0,
      ),
      child: Row(
        children: [
          _getForkView(),
          _getDetailsView(
            Icons.star_border,
            controller.projectUiData.numberOfStar.toString(),
          ),
          _getDetailsView(
            Icons.visibility_outlined,
            controller.projectUiData.watchers.toString(),
          ),
        ],
      ),
    );
  }

  _getForkView() {
    return Expanded(
      child: Row(
        children: [
          AssetImageView(
            url: "images/ic_fork.svg",
            height: 20.0,
            width: 20.0,
            color: Colors.grey,
          ),
          SizedBox(
            width: 2.0,
          ),
          Text(
            controller.projectUiData.numberOfFork.toString(),
            style: TextStyle(color: Colors.grey),
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
          controller.projectUiData.description,
          style: TextStyle(
            fontSize: 16.0,
          ),
        ),
      ),
    );
  }
}
