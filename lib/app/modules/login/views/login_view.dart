import 'package:flutter/material.dart';

import '/app/core/base/base_view.dart';
import '/app/core/widget/custom_app_bar.dart';
import '../controllers/login_controller.dart';

class LoginView extends BaseView<LoginController> {
  @override
  PreferredSizeWidget? appBar(BuildContext context) {
    return CustomAppBar(appBarTitleText: "Login");
  }

  @override
  Widget body(BuildContext context) {
    return const Center(
      child: Text(
        'LoginView is working',
        style: TextStyle(fontSize: 20),
      ),
    );
  }
}
