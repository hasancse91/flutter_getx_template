import 'package:flutter/material.dart';
import 'package:flutter_getx_template/app/core/base_view/base_view.dart';
import 'package:flutter_getx_template/app/core/widget/custom_app_bar.dart';
import 'package:get/get.dart';

import '../controllers/home_controller.dart';

class HomeView extends BaseView<HomeController> {

  @override
  PreferredSizeWidget? appBar(BuildContext context) {
    return CustomAppBar(appBarTitleText: 'Home',);
  }

  @override
  Widget body(BuildContext context) {
    return Container(
      child: Text('Hello'),
    );
  }
}
