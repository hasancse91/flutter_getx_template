
import 'package:flutter/material.dart';
import 'package:flutter_getx_template/app/core/values/text_styles.dart';

class AppBarTitle extends StatelessWidget {
  final String text;
  const AppBarTitle({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: pageTitleStyle,
      textAlign: TextAlign.center,
    );
  }
}
