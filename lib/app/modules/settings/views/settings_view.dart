import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_getx_template/app/core/values/app_values.dart';
import 'package:flutter_getx_template/app/modules/settings/widgets/settings_widgets.dart';
import 'package:fluttertoast/fluttertoast.dart';
import '/app/core/base/base_view.dart';
import '/app/core/widget/custom_app_bar.dart';
import '/app/modules/settings/controllers/settings_controller.dart';

class SettingsView extends BaseView<SettingsController> {
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

  _getView() => Column(
        children: [
          ItemSettings(
            () => _show('Theme clicked'),
            'ic_theme.svg',
            'arrow_forward.png',
            'Theme',
          ),
          ItemSettings(
            () => _show('Language clicked'),
            'ic_theme.svg',
            'arrow_forward.png',
            'Language',
          ),
          ItemSettings(
            () => _show('Font Size clicked'),
            'ic_theme.svg',
            'arrow_forward.png',
            'Font Size',
          ),
        ],
      );

  _show(String msg) {
    Fluttertoast.showToast(
      msg: msg,
      toastLength: Toast.LENGTH_SHORT,
      gravity: ToastGravity.CENTER,
      timeInSecForIosWeb: 1,
      backgroundColor: Colors.black,
      textColor: Colors.white,
      fontSize: AppValues.padding,
    );
  }
}
