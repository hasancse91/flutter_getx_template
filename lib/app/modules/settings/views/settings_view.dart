import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_getx_template/app/core/values/app_values.dart';
import 'package:flutter_getx_template/app/modules/settings/widgets/settings_widgets.dart';
import '/app/core/base/base_view.dart';
import '/app/core/widget/custom_app_bar.dart';
import '/app/modules/settings/controllers/settings_controller.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SettingsView extends BaseView<SettingsController> {
  List prefixIcons = [
    FontAwesomeIcons.ethereum,
    Icons.language,
    FontAwesomeIcons.font
  ];
  List suffixIcons = [
    Icons.arrow_forward_ios,
    Icons.arrow_forward_ios,
    Icons.arrow_forward_ios
  ];
  List titles = [
    'Theme',
    'Language',
    'Font Size',
  ];
  List toasts = [
    'Theme clicked',
    'Language clicked',
    'Font Size clicked',
  ];

  @override
  PreferredSizeWidget? appBar(BuildContext context) {
    return CustomAppBar(
      appBarTitleText: 'Settings',
      isBackButtonEnabled: false,
    );
  }

  @override
  Widget body(BuildContext context) {
    return _getView();
  }

  _getView() => ListView.separated(
        itemBuilder: (context, index) => SettingsWidgets(toasts[index],
            prefixIcons[index], suffixIcons[index], titles[index]),
        separatorBuilder: (BuildContext context, int index) =>
            const SizedBox(height: AppValues.smallMargin),
        itemCount: 3,
      );
}
