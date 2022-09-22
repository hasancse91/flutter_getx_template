import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../core/base/base_widget_mixin.dart';
import '../../theme/theme_controller.dart';
import '../controllers/settings_controller.dart';

// ignore: must_be_immutable
class ThemeChangingDialog extends StatelessWidget with BaseWidgetMixin {
  final SettingsController controller;
  final ThemeController _themeController;

  ThemeChangingDialog({Key? key, required this.controller})
      : _themeController = controller.themeController,
        super(key: key);

  ThemeMode? _selectedMode;

  @override
  Widget body(BuildContext context) {
    return Obx(() {
      _selectedMode = _themeController.currentThemeMode.value;

      return _selectedMode == null ? _loadingWidget() : _bodyWidget(context);
    });
  }

  Widget _loadingWidget() {
    return Center(
      child: CircularProgressIndicator(
        color: appTheme.primaryColor,
      ),
    );
  }

  Widget _bodyWidget(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        RadioListTile(
          value: ThemeMode.light,
          groupValue: _selectedMode,
          onChanged: (_) {
            _themeController.setLightThemeMode();
            Navigator.pop(context);
          },
          title: Text(appLocalization.lightTheme),
        ),
        RadioListTile(
          value: ThemeMode.dark,
          groupValue: _selectedMode,
          onChanged: (_) {
            _themeController.setDarkThemeMode();
            Navigator.pop(context);
          },
          title: Text(appLocalization.darkTheme),
        ),
        RadioListTile(
          value: ThemeMode.system,
          groupValue: _selectedMode,
          onChanged: (_) {
            _themeController.setSystemThemeMode();
            Navigator.pop(context);
          },
          title: Text(appLocalization.systemDefault),
        ),
      ],
    );
  }
}
