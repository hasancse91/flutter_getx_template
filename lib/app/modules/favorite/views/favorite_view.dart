import 'package:flutter/material.dart';
import 'package:flutter_getx_template/app/core/base/base_view.dart';
import 'package:flutter_getx_template/app/core/widget/custom_app_bar.dart';

import '../controllers/favorite_controller.dart';

class FavoriteView extends BaseView<FavoriteController> {
  @override
  PreferredSizeWidget? appBar(BuildContext context) {
    return CustomAppBar(appBarTitleText: 'Favorite',);
  }

  @override
  Widget body(BuildContext context) {
    return Center(
      child: Text(
        'FavoriteView is working',
        style: TextStyle(fontSize: 20),
      ),
    );
  }
}
