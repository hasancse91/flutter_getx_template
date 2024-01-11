import 'package:flutter/material.dart';
import 'package:flutter_getx_template/app/core/base/base_widget_mixin.dart';

import '/app/core/values/app_colors.dart';
import '/app/core/values/app_values.dart';

// ignore: must_be_immutable
class ElevatedContainer extends StatelessWidget with BaseWidgetMixin {
  final Widget child;
  final Color bgColor;
  final EdgeInsetsGeometry? padding;
  final double borderRadius;

  ElevatedContainer({
    Key? key,
    required this.child,
    this.bgColor = AppColors.pageBackground,
    this.padding,
    this.borderRadius = AppValues.smallRadius,
  }) : super(key: key);

  @override
  Widget body(BuildContext context) {
    return Container(
      padding: padding,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(borderRadius),
        boxShadow: [
          BoxShadow(
            color: theme.shadowColor,
            spreadRadius: 1,
            blurRadius: 1,
            offset: const Offset(0, 3), // changes position of shadow
          ),
        ],
        color: theme.cardColor,
      ),
      child: child,
    );
  }
}
