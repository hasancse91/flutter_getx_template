import 'package:flutter/material.dart';
import 'package:flutter_getx_template/app/core/base/base_widget_mixin.dart';
import 'package:get/get.dart';

import '../controllers/settings_controller.dart';

// ignore: must_be_immutable
class ThemeChangingDialog extends StatelessWidget with BaseWidgetMixin {
  final SettingsController controller;

  ThemeChangingDialog({Key? key, required this.controller}) : super(key: key);

  ThemeMode? selectedMode;


  @override
  Widget body(BuildContext context) {
    return Obx(() {
      selectedMode = controller.selectedThemeMode.value;

      return selectedMode == null ? _loadingWidget() : _bodyWidget(context);
    });
  }

  Widget _loadingWidget(){
    return Center(
      child: CircularProgressIndicator(
        color: appTheme.primaryColor,
      ),
    );
  }

  Widget _bodyWidget(BuildContext context){
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        RadioListTile(
          value: ThemeMode.light,
          groupValue: selectedMode,
          onChanged: (ThemeMode? mode) => _onThemeChanged(mode, context),
          title: const Text("Light"),
        ),
        RadioListTile(
          value: ThemeMode.dark,
          groupValue: selectedMode,
          onChanged: (ThemeMode? mode) => _onThemeChanged(mode, context),
          title: const Text("Dark"),
        ),
      ],
    );
  }

  void _onThemeChanged(ThemeMode? mode, BuildContext context) {
    controller.changeTheme();
    Navigator.pop(context);
  }

}
