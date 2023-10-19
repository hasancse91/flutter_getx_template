import 'package:flutter/material.dart';
import 'package:flutter_easyrefresh/easy_refresh.dart';
import 'package:get/get.dart';

import '/app/core/base/base_view.dart';
import '/app/core/widget/custom_app_bar.dart';
import '/app/modules/home/controllers/home_controller.dart';
import '/app/modules/home/widget/item_github_project.dart';

class HomeView extends BaseView<HomeController> {
  HomeView() {
    controller.getGithubGetxProjectList();
  }

  @override
  PreferredSizeWidget? appBar(BuildContext context) {
    return CustomAppBar(
      appBarTitleText: 'GetX Templates on GitHub',
    );
  }

  @override
  Widget body(BuildContext context) {
    return Obx(() => EasyRefresh.custom(
          header: BallPulseHeader(),
          footer: BallPulseFooter(),
          onRefresh: () async {
            controller.onRefreshPage();
          },
          onLoad: () async {
            controller.onLoadNextPage();
          },
          slivers: [
            SliverList(
              delegate: SliverChildBuilderDelegate(
                (context, index) {
                  var model = controller.projectList[index];
                  return ItemGithubProject(dataModel: model);
                },
                childCount: controller.projectList.length,
              ),
            ),
          ],
        ));
  }
}
