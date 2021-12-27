import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_getx_template/app/core/values/app_values.dart';
import 'package:flutter_getx_template/app/core/widget/paging_view.dart';
import 'package:flutter_getx_template/app/core/widget/ripple.dart';

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
              onTap: ()=>logger.d('Theme Clicked'),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children:  [
                  const Icon(Icons.person),
                  const SizedBox(width: 20),
                  const Text('Theme', style: titleStyle),
                  const Spacer(),
                  Switch(value: switchValue, onChanged: (newValue)=>switchValue = newValue),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(AppValues.padding),
            child: Ripple(
                onTap: ()=>logger.d('Language clicked'),
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
        ],
      ),
    );
  }
}
