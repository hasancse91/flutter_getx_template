
import 'package:dio/dio.dart';
import 'package:flutter_getx_template/app/data/local/preference_manager.dart';
import 'package:flutter_getx_template/app/data/local/preference_manager_impl.dart';

class RequestHeaderInterceptor extends InterceptorsWrapper {
  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    getCustomHeaders().then((customHeaders) {
      options.headers.addAll(customHeaders);
      super.onRequest(options, handler);
    });
  }

  Future<Map<String, String>> getCustomHeaders() async {
    var preference = PreferenceManagerImpl();
    final String accessToken = preference.getString(PreferenceManager.keyToken);
    var customHeaders = {'content-type': 'application/json'};
    if (accessToken.trim().isNotEmpty) {
      customHeaders.addAll({
        'Authorization': "Bearer $accessToken",
      });
    }

    return customHeaders;
  }
}
