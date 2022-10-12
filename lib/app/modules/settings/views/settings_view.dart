import 'package:flutter/material.dart';
import 'package:flutter_getx_template/app/core/values/app_colors.dart';
import 'package:flutter_getx_template/app/core/values/text_styles.dart';
import 'package:flutter_getx_template/app/core/widget/alert_widget.dart';
import 'package:get/get.dart';
import '../../main/controllers/bottom_nav_controller.dart';
import '/app/modules/settings/widgets/item_settings_widgets.dart';
import '/app/core/base/base_view.dart';
import '/app/core/widget/custom_app_bar.dart';
import '/app/modules/settings/controllers/settings_controller.dart';

class SettingsView extends BaseView<SettingsController> {
  BottomNavController bottomNavController = Get.find();

  @override
  PreferredSizeWidget? appBar(BuildContext context) {
    return CustomAppBar(
      appBarTitleText: appLocalization.bottomNavSettings,
      isBackButtonEnabled: false,
    );
  }

  @override
  Widget body(BuildContext context) {
    return Column(
      children: [
        ItemSettings(
          title: appLocalization.settingsTheme,
          prefixImage: 'ic_theme.png',
          suffixImage: 'arrow_forward.svg',
          onTap: _onThemeItemClicked,
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
    );
  }

  Widget _getHorizontalDivider() {
    return const Divider(height: 1);
  }

  void _onThemeItemClicked() {
    showToast(appLocalization.themeToast);
  }

  void _onLanguageItemClicked() {
    Get.defaultDialog(
      title: appLocalization.languageSelectorTitle,
      titleStyle: titleStyle,
      middleText: '',
      content: AlertWidget(),
      actions: [
        Padding(
          padding: const EdgeInsets.only(right: 8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              ElevatedButton(
                child: Text(
                  appLocalization.cancelText,
                  style: buttonTextStyle,
                ),
                style: ElevatedButton.styleFrom(
                  primary: AppColors.appBarColor,
                ),
                onPressed: () {
                  Get.back();
                },
              ),
              const SizedBox(
                width: 4.0,
              ),
              ElevatedButton(
                onPressed: () {
                  Get.back();
                  controller.changeLanguage();
                  bottomNavController.updateSelectedIndex(2);
                  showToast(appLocalization.languageToast);
                },
                child: Text(
                  appLocalization.confirmText,
                  style: buttonTextStyle,
                ),
                style: ElevatedButton.styleFrom(
                  primary: AppColors.appBarColor,
                ),
              ),
            ],
          ),
        )
      ],
    );
  }

  void _onFontSizeItemClicked() {
    showToast(appLocalization.fontSizeToast);
  }
}
