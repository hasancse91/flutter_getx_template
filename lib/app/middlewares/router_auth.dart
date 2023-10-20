// ignore_for_file: overridden_fields, unnecessary_overrides

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '/app/routes/app_pages.dart';

class RouteAuthMiddleware extends GetMiddleware {
  @override
  var priority = 0;

  RouteAuthMiddleware({required this.priority});

  @override
  RouteSettings? redirect(String? route) {
    if (route == "/other") {
      Future.delayed(
          const Duration(seconds: 1), () => Get.snackbar("提示", "请先登录APP"));
      return const RouteSettings(name: Routes.LOGIN);
    }
    return super.redirect(route);
  }
}
