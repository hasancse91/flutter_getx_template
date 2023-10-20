import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '/generated/locales.g.dart';
import '/app/modules/settings/widgets/item_settings_widgets.dart';
import '/app/core/base/base_view.dart';
import '/app/core/widget/custom_app_bar.dart';
import '/app/modules/settings/controllers/settings_controller.dart';

class SettingsView extends BaseView<SettingsController> {
  @override
  PreferredSizeWidget? appBar(BuildContext context) {
    return CustomAppBar(
      appBarTitleText: LocaleKeys.bottomNavSettings.tr,
      isBackButtonEnabled: false,
    );
  }

  @override
  Widget body(BuildContext context) {
    return Column(
      children: [
        ItemSettings(
          title: LocaleKeys.settingsTheme.tr,
          prefixImage: 'ic_theme.png',
          suffixImage: 'arrow_forward.svg',
          onTap: _onThemeItemClicked,
        ),
        _getHorizontalDivider(),
        ItemSettings(
          title: LocaleKeys.settingsLanguage.tr,
          prefixImage: 'ic_language.svg',
          suffixImage: 'arrow_forward.svg',
          onTap: _onLanguageItemClicked,
        ),
        _getHorizontalDivider(),
        ItemSettings(
          title: LocaleKeys.settingsFontSize.tr,
          prefixImage: 'ic_font_size.svg',
          suffixImage: 'arrow_forward.svg',
          onTap: _onFontSizeItemClicked,
        ),
        _getHorizontalDivider(),
        ItemSettings(
          title: "WebView",
          prefixImage: 'ic_language.svg',
          suffixImage: 'arrow_forward.svg',
          onTap: _onWebViewItemClicked,
        ),
        _getHorizontalDivider(),
        ItemSettings(
          title: "OtherView",
          prefixImage: 'ic_language.svg',
          suffixImage: 'arrow_forward.svg',
          onTap: _onOtherViewItemClicked,
        ),
        _getHorizontalDivider(),
        ItemSettings(
          title: "NotFoundView",
          prefixImage: 'ic_language.svg',
          suffixImage: 'arrow_forward.svg',
          onTap: _onNotFoundViewItemClicked,
        ),
        _getHorizontalDivider(),
      ],
    );
  }

  Widget _getHorizontalDivider() {
    return const Divider(height: 1);
  }

  void _onThemeItemClicked() {
    Get.changeTheme(Get.isDarkMode ? ThemeData.light() : ThemeData.dark());
    showToast('Switch Theme: ${Get.isDarkMode ? 'light' : 'dark'}');
  }

  void _onLanguageItemClicked() {
    if (Get.locale?.languageCode == "en") {
      Get.updateLocale(const Locale("zh", "cn"));
      showToast('Switch Language: Chinese');
    } else {
      Get.updateLocale(const Locale("en", "us"));
      showToast('Switch Language: English');
    }
  }

  void _onFontSizeItemClicked() {
    showToast('Font Size: Development in progress');
  }

  void _onWebViewItemClicked() {
    Get.toNamed("/web?url=https://flutter.dev");
  }

  void _onOtherViewItemClicked() {
    Get.toNamed("/other");
  }

  void _onNotFoundViewItemClicked() {
    Get.toNamed("/webview");
  }
}
