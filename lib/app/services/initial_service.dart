import 'package:get/get.dart';

import '/app/core/utils/sp_util.dart';

class InitialService extends GetxService {
  Future<InitialService> init() async {
    await SpUtil.getInstance();
    return this;
  }
}
