import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_getx_template/app/core/values/app_values.dart';
import 'package:flutter_getx_template/app/core/widget/paging_view.dart';
import 'package:flutter_getx_template/app/core/widget/ripple.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '/app/core/base/base_view.dart';
import '/app/core/values/text_styles.dart';
import '/app/core/widget/custom_app_bar.dart';
import '/app/modules/settings/controllers/settings_controller.dart';

class SettingsView extends BaseView<SettingsController> {
  bool switchValue = true;
  static const dp16 = 16.0;


  @override
  PreferredSizeWidget? appBar(BuildContext context) {
    return CustomAppBar(
      appBarTitleText: 'Settings',
    );
  }

  @override
  Widget body(BuildContext context) {
    return PagingView(
      onRefresh: null,
      onLoadNextPage: ()=>Container(),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(AppValues.padding),
            child: Ripple(
              onTap: ()=>
                Fluttertoast.showToast(
                  msg: "Theme is clicked",
                  toastLength: Toast.LENGTH_SHORT,
                  gravity: ToastGravity.CENTER,
                  timeInSecForIosWeb: 1,
                  backgroundColor: Colors.black,
                  textColor: Colors.white,
                  fontSize: dp16,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children:  [
                  Icon(FontAwesomeIcons.ethereum),
                  const SizedBox(width: 20),
                  Text('Theme', style: titleStyle),
                  Spacer(),
                  switchValue?Text('Light', style: cardSubtitleStyle):Text('Dark', style: cardSubtitleStyle),
                  Icon(Icons.arrow_forward_ios, color: Colors.grey),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(AppValues.padding),
            child: Ripple(
                onTap: ()=>Fluttertoast.showToast(
    msg: "Language is clicked",
    toastLength: Toast.LENGTH_SHORT,
    gravity: ToastGravity.CENTER,
    timeInSecForIosWeb: 1,
    backgroundColor: Colors.black,
    textColor: Colors.white,
    fontSize: dp16,
    ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Icon(Icons.language),
                  SizedBox(width: 20),
                  Text('Language', style: titleStyle),
                  Spacer(),
                  Text('English', style: cardSubtitleStyle),
                  Icon(Icons.arrow_forward_ios, color: Colors.grey)
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(AppValues.padding),
            child: Ripple(
              onTap: ()=>Fluttertoast.showToast(
                  msg: "Font Size is clicked",
                  toastLength: Toast.LENGTH_SHORT,
                  gravity: ToastGravity.CENTER,
                  timeInSecForIosWeb: 1,
                  backgroundColor: Colors.black,
                  textColor: Colors.white,
                  fontSize: dp16,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Icon(FontAwesomeIcons.font),
                  SizedBox(width: 20),
                  Text('Font Size', style: titleStyle),
                  Spacer(),
                  Text('Change Size', style: cardSubtitleStyle),
                  Icon(Icons.arrow_forward_ios, color: Colors.grey),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
