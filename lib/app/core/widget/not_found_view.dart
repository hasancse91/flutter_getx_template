// ignore_for_file: unrelated_type_equality_checks

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '/app/routes/app_pages.dart';

class NotfoundView extends StatelessWidget {
  const NotfoundView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("路由没有找到"),
      ),
      body: ListTile(
        title: const Text("返回首页"),
        subtitle: const Text('Get.offAllNamed(AppRoutes.Home)'),
        onTap: () => Get.until((route) => Get.currentRoute == Routes.MAIN),
      ),
    );
  }
}
