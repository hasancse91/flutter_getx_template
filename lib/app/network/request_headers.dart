
import 'package:dio/dio.dart';
import 'package:flutter_getx_template/app/data/local/preference/preference_manager.dart';
import 'package:flutter_getx_template/app/data/local/preference/preference_manager_impl.dart';

class RequestHeaderInterceptor extends InterceptorsWrapper {
  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    getCustomHeaders().then((customHeaders) {
      options.headers.addAll(customHeaders);
      super.onRequest(options, handler);
    });
  }

  Future<Map<String, String>> getCustomHeaders() async {
    var customHeaders = {'content-type': 'application/json'};

    return customHeaders;
  }
}
