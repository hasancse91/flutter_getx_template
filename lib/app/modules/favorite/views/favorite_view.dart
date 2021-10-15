import 'package:flutter/material.dart';
import 'package:flutter_getx_template/app/core/base/base_view.dart';
import 'package:flutter_getx_template/app/core/values/text_styles.dart';
import 'package:flutter_getx_template/app/core/widget/custom_app_bar.dart';
import 'package:flutter_getx_template/app/modules/favorite/controllers/favorite_controller.dart';

class FavoriteView extends BaseView<FavoriteController> {
  @override
  PreferredSizeWidget? appBar(BuildContext context) {
    return CustomAppBar(appBarTitleText: 'Favorite',);
  }

  @override
  Widget body(BuildContext context) {
    return const Center(
      child: Text(
        'FavoriteView is working',
        style: titleStyle,
      ),
    );
  }
}
