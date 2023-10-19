import 'package:get/get.dart';
import 'package:webview_flutter/webview_flutter.dart';

import '/app/core/base/base_controller.dart';
import '/app/core/utils/utils.dart';

class WebController extends BaseController {
  late String url;
  late WebViewController webController;

  final progress = 0.obs;

  @override
  void onInit() {
    super.onInit();
    if (Get.parameters["url"] != null) {
      url = Get.parameters["url"] ?? '';
    }
    if (Get.arguments["url"] != null) {
      url = Get.arguments["url"];
    }

    webController = WebViewController();

    if (PlatformUtil.isAndroid || PlatformUtil.isIOS) {
      webController.setJavaScriptMode(JavaScriptMode.unrestricted);
      webController.setNavigationDelegate(
        NavigationDelegate(
          onProgress: (int value) {
            progress.value = value;
          },
          onPageStarted: (String url) {},
          onPageFinished: (String url) {},
          onWebResourceError: (WebResourceError error) {},
          onNavigationRequest: (NavigationRequest request) {
            return NavigationDecision.navigate;
          },
        ),
      );
    }

    /// 加载网页
    webController.loadRequest(Uri.parse(url));
  }
}
