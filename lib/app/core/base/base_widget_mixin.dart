import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:get/get.dart';
import 'package:logger/logger.dart';

import '/flavors/build_config.dart';

mixin BaseWidgetMixin on StatelessWidget {
  AppLocalizations get appLocalization => AppLocalizations.of(Get.context!)!;
  final Logger logger = BuildConfig.instance.config.logger;

  late TextTheme _textTheme;

  TextTheme get textTheme => _textTheme;

  late ThemeData _theme;

  ThemeData get theme => _theme;

  @override
  Widget build(BuildContext context) {
    _textTheme = context.textTheme;
    _theme = context.theme;

    return Container(
      child: body(context),
    );
  }

  Widget body(BuildContext context);
}
