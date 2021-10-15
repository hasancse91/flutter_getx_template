import 'package:flutter/material.dart';

import '/app/core/base/base_view.dart';
import '/app/core/widget/custom_app_bar.dart';
import '../controllers/other_controller.dart';

class OtherView extends BaseView<OtherController> {
  final String viewParam;

  OtherView({this.viewParam = ""});

  @override
  PreferredSizeWidget? appBar(BuildContext context) {
    return CustomAppBar(appBarTitleText: viewParam);
  }

  @override
  Widget body(BuildContext context) {
    return const Center(
      child: Text(
        'OtherView is working',
        style: TextStyle(fontSize: 20),
      ),
    );
  }
}
