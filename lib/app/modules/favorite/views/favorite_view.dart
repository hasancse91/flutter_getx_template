import 'package:flutter/material.dart';

import '/app/core/base/base_view.dart';
import '/app/core/values/text_styles.dart';
import '/app/core/widget/custom_app_bar.dart';
import '/app/modules/favorite/controllers/favorite_controller.dart';

// ignore: must_be_immutable
class FavoriteView extends BaseView<FavoriteController> {
  @override
  PreferredSizeWidget? appBar(BuildContext context) {
    return CustomAppBar(
      appBarTitleText: 'Favorite',
    );
  }

  @override
  Widget body(BuildContext context) {
    return Center(
      child: Text(
        'FavoriteView is working',
        style: textTheme.titleLarge,
      ),
    );
  }
}
