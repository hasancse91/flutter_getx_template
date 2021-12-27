import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_getx_template/app/core/values/app_values.dart';
import 'package:flutter_getx_template/app/core/widget/paging_view.dart';
import 'package:flutter_getx_template/app/core/widget/ripple.dart';
import 'package:fluttertoast/fluttertoast.dart';

import '/app/core/base/base_view.dart';
import '/app/core/values/text_styles.dart';
import '/app/core/widget/custom_app_bar.dart';
import '/app/modules/settings/controllers/settings_controller.dart';

class SettingsView extends BaseView<SettingsController> {
  bool switchValue = true;
  @override
  PreferredSizeWidget? appBar(BuildContext context) {
    return CustomAppBar(
      appBarTitleText: 'Settings',
    );
  }

  static const num16 = 16.0;

  @override
  Widget body(BuildContext context) {
    return PagingView(
      onRefresh: null,
      onLoadNextPage: () => Container(),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(AppValues.padding),
            child: Ripple(
              onTap: () => Fluttertoast.showToast(
                msg: 'Theme Clicked',
                toastLength: Toast.LENGTH_SHORT,
                timeInSecForIosWeb: 1,
                backgroundColor: Colors.black,
                textColor: Colors.white,
                fontSize: num16,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Icon(Icons.switch_left),
                  SizedBox(width: 20),
                  Text('Theme', style: titleStyle),
                  Spacer(),
                  Icon(Icons.arrow_forward_ios, color: Colors.grey),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(AppValues.padding),
            child: Ripple(
              onTap: () => Fluttertoast.showToast(
                msg: 'Language Clicked',
                toastLength: Toast.LENGTH_SHORT,
                timeInSecForIosWeb: 1,
                backgroundColor: Colors.black,
                textColor: Colors.white,
                fontSize: num16,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Icon(Icons.language),
                  SizedBox(width: 20),
                  Text('Language', style: titleStyle),
                  Spacer(),
                  Icon(Icons.arrow_forward_ios, color: Colors.grey)
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(AppValues.padding),
            child: Ripple(
              onTap: () => Fluttertoast.showToast(
                msg: 'Font Size Clicked',
                toastLength: Toast.LENGTH_SHORT,
                timeInSecForIosWeb: 1,
                backgroundColor: Colors.black,
                textColor: Colors.white,
                fontSize: num16,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Icon(Icons.font_download),
                  SizedBox(width: 20),
                  Text('Font Size', style: titleStyle),
                  Spacer(),
                  Icon(Icons.arrow_forward_ios, color: Colors.grey)
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
