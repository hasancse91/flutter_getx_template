import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

import '/app/core/base/base_view.dart';
import '/app/modules/web/controllers/web_controller.dart';
import '/app/core/widget/custom_app_bar.dart';

class WebView extends BaseView<WebController> {
  @override
  PreferredSizeWidget? appBar(BuildContext context) {
    return CustomAppBar(appBarTitleText: "webview");
  }

  @override
  Widget body(BuildContext context) {
    return WebViewWidget(controller: controller.webController);
  }
}
