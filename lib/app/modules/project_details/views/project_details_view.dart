import 'package:flutter/material.dart';
import 'package:flutter_getx_template/app/core/base/base_view.dart';
import 'package:flutter_getx_template/app/core/values/app_colors.dart';
import 'package:flutter_getx_template/app/core/values/app_values.dart';
import 'package:flutter_getx_template/app/core/values/text_styles.dart';
import 'package:flutter_getx_template/app/core/widget/custom_app_bar.dart';
import 'package:flutter_getx_template/app/core/widget/icon_text_widgets.dart';
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
    dataModel = Get.arguments;
    if (dataModel != null) {
      controller.getGithubRepository(
        dataModel!.ownerLoginName,
        dataModel!.repositoryName,
      );
    }

    return Scaffold(
      body: Center(
        child: Obx(
          () => _getView(),
        ),
      ),
    );
  }

  Widget _getView() {
    if (controller.projectUiData.repositoryName.isEmpty) {
      return Container();
    } else {
      return Container(
        margin: EdgeInsets.symmetric(
          horizontal: AppValues.margin_20,
          vertical: AppValues.margin_20,
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
              height: AppValues.margin_4
            ),
            _getForkStarWatcherView(),
            SizedBox(
              height: AppValues.margin_30
            ),
            _getDescription(),
          ],
        ),
      );
    }
  }

  Widget _getAuthor() {
    return Row(
      children: [
        CircleAvatar(
          backgroundImage: NetworkImage(controller.projectUiData.ownerAvatar),
          radius: AppValues.iconSmallSize,
        ),
        SizedBox(
          width: AppValues.margin_6
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

  Widget _getForkStarWatcherView() {
    return Container(
      margin: EdgeInsets.only(
        left: AppValues.margin_40,
      ),
      child: Row(
        children: [
          IconTextWidget(
            fileName: "ic_fork.svg",
            value: controller.projectUiData.numberOfFork.toString(),
            height: AppValues.iconSize_20,
            width: AppValues.iconSize_20,
            color: AppColors.iconColorDefault,
          ),
          IconTextWidget(
            icon: Icons.star_border,
            value: controller.projectUiData.numberOfStar.toString(),
            size: AppValues.iconSize_20,
            color: AppColors.iconColorDefault,
          ),
          IconTextWidget(
            icon: Icons.visibility_outlined,
            value: controller.projectUiData.watchers.toString(),
            size: AppValues.iconSize_20,
            color: AppColors.iconColorDefault,
          ),
        ],
      ),
    );
  }

  Widget _getDescription() {
    return Expanded(
      child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Text(controller.projectUiData.description,
            style: descriptionTextStyle),
      ),
    );
  }
}
