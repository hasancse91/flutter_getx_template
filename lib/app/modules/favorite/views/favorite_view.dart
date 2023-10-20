import 'package:flutter/material.dart';

import '/app/core/base/base_view.dart';
import '/app/core/widget/widgets.dart';
import '/app/modules/favorite/controllers/favorite_controller.dart';

class FavoriteView extends BaseView<FavoriteController> {
  @override
  PreferredSizeWidget? appBar(BuildContext context) {
    return CustomAppBar(
      appBarTitleText: 'Favorite',
      actions: [
        IconButton(
          tooltip: "",
          icon: const Icon(
            Icons.switch_left,
            color: Colors.white,
          ),
          onPressed: () {
            controller.switchPageState();
          },
        ),
      ],
    );
  }

  @override
  Widget body(BuildContext context) {
    return const Center(
      child: NetworkImageView(
        imageUrl:
            "https://img-qn.51miz.com/preview/element/00/01/13/24/E-1132423-D48B03A1.jpg!/quality/90/unsharp/true/compress/true/format/jpg/fh/800",
      ),
    );
  }
}
