import 'package:flutter/material.dart';
import 'package:flutter_getx_template/app/core/base/base_widget_mixin.dart';

import '/app/core/values/text_styles.dart';

// ignore: must_be_immutable
class AppBarTitle extends StatelessWidget with BaseWidgetMixin {
  final String text;

  AppBarTitle({Key? key, required this.text}) : super(key: key);

  @override
  Widget body(BuildContext context) {
    return Text(
      text,
      style: theme.appBarTheme.titleTextStyle,
      textAlign: TextAlign.center,
    );
  }
}
