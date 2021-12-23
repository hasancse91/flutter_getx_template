import 'package:flutter/material.dart';
import 'package:flutter_getx_template/app/core/widget/paging_view.dart';
import 'package:flutter_getx_template/app/core/widget/ripple.dart';

import '/app/core/base/base_view.dart';
import '/app/core/values/text_styles.dart';
import '/app/core/widget/custom_app_bar.dart';
import '/app/modules/settings/controllers/settings_controller.dart';

class SettingsView extends BaseView<SettingsController> {
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
        children: [
          Ripple(
            onTap: ()=>logger.d('Theme Clicked'),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Icon(Icons.person),
                SizedBox(width: 20),
                Text('Theme'),
                Spacer(),
                Icon(Icons.arrow_forward_ios, color: Colors.grey),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
