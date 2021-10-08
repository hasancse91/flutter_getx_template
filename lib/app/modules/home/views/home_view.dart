import 'package:flutter/material.dart';
import 'package:flutter_getx_template/app/core/base/base_view.dart';
import 'package:flutter_getx_template/app/core/values/app_values.dart';
import 'package:flutter_getx_template/app/core/widget/custom_app_bar.dart';
import 'package:flutter_getx_template/app/modules/home/widget/item_github_project.dart';
import 'package:get/get.dart';

import '../controllers/home_controller.dart';

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
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(AppValues.padding),
        child: Obx(
          () => ListView.separated(
            shrinkWrap: true,
            itemCount: controller.projectList.length,
            primary: false,
            physics: const NeverScrollableScrollPhysics(),
            itemBuilder: (context, index) {
              var model = controller.projectList[index];
              return ItemGithubProject(dataModel: model);
            },
            separatorBuilder: (BuildContext context, int index) =>
                const SizedBox(height: AppValues.smallMargin),
          ),
        ),
      ),
    );
  }
}
