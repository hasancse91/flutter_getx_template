import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '/app/core/base/base_view.dart';
import '/app/core/widget/custom_app_bar.dart';
import '/app/modules/settings/controllers/settings_controller.dart';

// ignore: must_be_immutable
class SettingsView extends BaseView<SettingsController> {
  SettingsView() {
    controller.getCurrentThemeMode();
  }

  @override
  PreferredSizeWidget? appBar(BuildContext context) {
    return CustomAppBar(
      appBarTitleText: 'Settings',
    );
  }

  @override
  Widget body(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Obx(() => Text(controller.currentThemeText.value)),
            Obx(() => Switch(
                  value: controller.isCurrentThemeDarkMode.value,
                  onChanged: (value) =>
                      _changeThemeMode(), //not using the value
                )),
          ],
        ),
      ),
    );
  }

  _changeThemeMode() {
    controller.changeTheme();
  }
}
