import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:flutter_getx_template/app/core/base/base_view.dart';
import 'package:flutter_getx_template/app/core/values/app_values.dart';
import 'package:flutter_getx_template/app/core/widget/custom_app_bar.dart';
import 'package:flutter_getx_template/app/core/widget/icon_text_widgets.dart';
import 'package:flutter_getx_template/app/modules/project_details/controllers/project_details_controller.dart';

// ignore:must_be_immutable
class ProjectDetailsView extends BaseView<ProjectDetailsController> {
  @override
  PreferredSizeWidget? appBar(BuildContext context) {
    return CustomAppBar(
      appBarTitleText: 'Repository details',
      isBackButtonEnabled: true,
    );
  }

  @override
  Widget body(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Obx(() => _getView()),
      ),
    );
  }

  Widget _getView() {
    return controller.projectUiData.repositoryName.isEmpty
        ? Container()
        : Container(
            margin: const EdgeInsets.all(AppValues.margin_20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  controller.projectUiData.repositoryName,
                  style: textTheme.titleMedium,
                  overflow: TextOverflow.ellipsis,
                  maxLines: 1,
                ),
                _getAuthor(),
                const SizedBox(height: AppValues.margin_4),
                _getForkStarWatcherView(),
                const SizedBox(height: AppValues.margin_30),
                _getDescription()
              ],
            ),
          );
  }

  Widget _getAuthor() {
    return Row(
      children: [
        CircleAvatar(
          backgroundImage: NetworkImage(controller.projectUiData.ownerAvatar),
          radius: AppValues.iconSmallSize,
        ),
        const SizedBox(width: AppValues.margin_6),
        Text(
          controller.projectUiData.ownerLoginName,
          style: textTheme.labelLarge,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
        ),
      ],
    );
  }

  Widget _getForkStarWatcherView() {
    return Container(
      margin: const EdgeInsets.only(left: AppValues.margin_40),
      child: Row(
        children: [
          IconTextWidget(
            fileName: "ic_fork.svg",
            value: controller.projectUiData.numberOfFork.toString(),
            height: AppValues.iconSize_20,
            width: AppValues.iconSize_20,
            color: theme.iconTheme.color,
          ),
          IconTextWidget(
            icon: Icons.star_border,
            value: controller.projectUiData.numberOfStar.toString(),
            size: AppValues.iconSize_20,
            color: theme.iconTheme.color,
          ),
          IconTextWidget(
            icon: Icons.visibility_outlined,
            value: controller.projectUiData.watchers.toString(),
            size: AppValues.iconSize_20,
            color: theme.iconTheme.color,
          ),
        ],
      ),
    );
  }

  Widget _getDescription() {
    return Expanded(
      child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Text(
          controller.projectUiData.description,
          style: textTheme.bodyMedium,
        ),
      ),
    );
  }
}
