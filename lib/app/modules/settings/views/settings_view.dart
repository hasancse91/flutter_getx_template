import 'package:flutter/material.dart';
import 'package:flutter_getx_template/app/modules/settings/dialogs/theme_changing_dialog.dart';
import 'package:flutter_getx_template/app/modules/settings/widgets/item_settings_widgets.dart';
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
      appBarTitleText: appLocalization.bottomNavSettings,
      isBackButtonEnabled: false,
    );
  }

  @override
  Widget body(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          ItemSettings(
            title: appLocalization.settingsTheme,
            prefixImage: 'ic_theme.png',
            suffixImage: 'arrow_forward.svg',
            onTap: ()=>_onThemeItemClicked(context),
          ),
          _getHorizontalDivider(),
          ItemSettings(
            title: appLocalization.settingsLanguage,
            prefixImage: 'ic_language.svg',
            suffixImage: 'arrow_forward.svg',
            onTap: _onLanguageItemClicked,
          ),
          _getHorizontalDivider(),
          ItemSettings(
            title: appLocalization.settingsFontSize,
            prefixImage: 'ic_font_size.svg',
            suffixImage: 'arrow_forward.svg',
            onTap: _onFontSizeItemClicked,
          ),
          _getHorizontalDivider(),
        ],
      ),
    );
  }

  Widget _getHorizontalDivider() {
    return const Divider(height: 1);
  }

  void _onThemeItemClicked(BuildContext context) {
    showDialog(
      context: context,
      builder: (ctx){
        return AlertDialog(
          content: ThemeChangingDialog(controller: controller),
        );
      },
    );
  }

  void _onLanguageItemClicked() {
    showToast('Language: Development in progress');
  }

  void _onFontSizeItemClicked() {
    showToast('Font Size: Development in progress');
  }

}
