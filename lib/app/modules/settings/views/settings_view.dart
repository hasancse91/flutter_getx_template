import 'package:flutter/material.dart';
// <<<<<<< HEAD
// import 'package:get/get.dart';
//
// =======
import '/app/modules/settings/widgets/item_settings_widgets.dart';
// >>>>>>> master
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
// <<<<<<< HEAD
//     return Scaffold(
//       body: Padding(
//         padding: const EdgeInsets.all(10),
//         child: Row(
//           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//           children: [
//             Obx(() => Text(controller.currentThemeText.value)),
//             Obx(() => Switch(
//                   value: controller.isCurrentThemeDarkMode.value,
//                   onChanged: (value) =>
//                       _changeThemeMode(), //not using the value
//                 )),
//           ],
//         ),
//       ),
//     );
//   }
//
//   _changeThemeMode() {
//     controller.changeTheme();
//   }
// =======
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
    showToast('Theme: Development in progress');
  }

  void _onLanguageItemClicked() {
    showToast('Language: Development in progress');
  }

  void _onFontSizeItemClicked() {
    showToast('Font Size: Development in progress');
  }

// >>>>>>> master
}
