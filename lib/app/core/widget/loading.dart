import 'package:flutter/material.dart';
import 'package:flutter_getx_template/app/core/base/base_widget_mixin.dart';

import '/app/core/values/app_colors.dart';

// ignore: must_be_immutable
class Loading extends StatelessWidget with BaseWidgetMixin {
  Loading({Key? key}) : super(key: key);

  @override
  Widget body(BuildContext context) {
    return Container(
      color: AppColors.loaderBackground,
      child: Center(
        child: _getIconWithProgressIndicator(),
      ),
    );
  }

  Widget _getIconWithProgressIndicator() {
    return Stack(
      children: [
        _getProgressIndicator(),
      ],
    );
  }

  Widget _getProgressIndicator() {
    return CircularProgressIndicator(
      color: theme.primaryColor,
    );
  }
}
