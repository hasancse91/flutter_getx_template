import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_getx_template/app/core/values/app_values.dart';
import 'package:flutter_getx_template/app/core/widget/ripple.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import '/app/core/base/base_view.dart';
import '/app/core/values/text_styles.dart';
import '/app/core/widget/custom_app_bar.dart';
import '/app/modules/settings/controllers/settings_controller.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SettingsView extends BaseView<SettingsController> {
  static const dp16 = 16.0;

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
          _theme(),
          _language(),
          _fontSize(),
        ],
      );

  _theme() => Padding(
        padding: const EdgeInsets.all(AppValues.padding),
        child: Ripple(
          onTap: () => _show('Theme clicked'),
          child: Row(
            children: const [
              Icon(FontAwesomeIcons.ethereum),
              SizedBox(width: 10),
              Text('Theme', style: titleStyle),
              Spacer(),
              Icon(Icons.arrow_forward_ios, color: Colors.grey),
            ],
          ),
        ),
      );

  _language() => Padding(
        padding: const EdgeInsets.all(AppValues.padding),
        child: Ripple(
            onTap: () => _show('Language clicked'),
            child: Row(
              children: const [
                Icon(Icons.language),
                SizedBox(width: 10),
                Text('Language', style: titleStyle),
                Spacer(),
                Icon(Icons.arrow_forward_ios, color: Colors.grey),
              ],
            )),
      );

  _fontSize() => Padding(
        padding: const EdgeInsets.all(AppValues.padding),
        child: Ripple(
          onTap: () => _show('Font Size clicked'),
          child: Row(
            children: const [
              Icon(FontAwesomeIcons.font),
              SizedBox(width: 10),
              Text('Font Size', style: titleStyle),
              Spacer(),
              Icon(Icons.arrow_forward_ios, color: Colors.grey),
            ],
          ),
        ),
      );

  void _show(String msg) {
    Fluttertoast.showToast(
      msg: msg,
      toastLength: Toast.LENGTH_SHORT,
      gravity: ToastGravity.CENTER,
      timeInSecForIosWeb: 1,
      backgroundColor: Colors.black,
      textColor: Colors.white,
      fontSize: dp16,
    );
  }
}
