import 'package:flutter/material.dart';
import 'package:flutter_getx_template/app/core/base/base_view.dart';
import 'package:flutter_getx_template/app/core/widget/custom_app_bar.dart';

import '../controllers/repo_details_controller.dart';

class RepoDetailsView extends BaseView<RepoDetailsController> {
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
        child: Text(
          'RepoDetailsView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
