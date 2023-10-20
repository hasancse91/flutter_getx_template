import 'package:package_info_plus/package_info_plus.dart';
import 'package:url_launcher/url_launcher.dart';

import '/app/core/utils/utils.dart';

/// Common Util.
class CommonUtil {
  CommonUtil._internal();

  ///处理链接
  static void launchURL(Uri url) async {
    if (await canLaunchUrl(url)) {
      await launchUrl(url);
    } else {
      ToastUtil.toast("暂不能处理这条链接:$url");
    }
  }

  ///获取应用包信息
  static Future<PackageInfo> getPackageInfo() {
    return PackageInfo.fromPlatform();
  }

  ///获取应用包信息
  static Future<Map<String, dynamic>> getPackageInfoMap() async {
    PackageInfo packageInfo = await PackageInfo.fromPlatform();
    return <String, dynamic>{
      'appName': packageInfo.appName,
      'packageName': packageInfo.packageName,
      'version': packageInfo.version,
      'buildNumber': packageInfo.buildNumber,
      'buildSignature': packageInfo.buildSignature,
    };
  }
}
