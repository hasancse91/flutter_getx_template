import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '/app/core/base/base_view.dart';
import '/app/modules/splash/controllers/splash_controller.dart';

class SplashView extends BaseView<SplashController> {
  @override
  PreferredSizeWidget? appBar(BuildContext context) {
    return null;
  }

  @override
  Widget body(BuildContext context) {
    return const Center(
      child: Text(
        'SplashView is working',
        style: TextStyle(fontSize: 20),
      ),
    );
  }
}
