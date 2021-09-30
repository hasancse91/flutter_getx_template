import 'package:flutter/material.dart';
import 'package:flutter_getx_template/app/core/base_view/base_view.dart';
import 'package:flutter_getx_template/app/core/widget/custom_app_bar.dart';

import 'package:get/get.dart';

import '../controllers/settings_controller.dart';

class SettingsView extends BaseView<SettingsController> {

  @override
  PreferredSizeWidget? appBar(BuildContext context) {
    return CustomAppBar(appBarTitleText: 'Settings',);
  }

  @override
  Widget body(BuildContext context) {
    return Center(
      child: Text(
        'SettingsView is working',
        style: TextStyle(fontSize: 20),
      ),
    );
  }
}
