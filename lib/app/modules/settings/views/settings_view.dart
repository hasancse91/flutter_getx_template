import 'package:flutter/material.dart';
import '/app/core/values/app_values.dart';
import '/app/modules/settings/widgets/item_settings_widgets.dart';
import 'package:fluttertoast/fluttertoast.dart';
import '/app/core/base/base_view.dart';
import '/app/core/widget/custom_app_bar.dart';
import '/app/modules/settings/controllers/settings_controller.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class SettingsView extends BaseView<SettingsController> {
  late final AppLocalizations appLocalizations;

  @override
  PreferredSizeWidget? appBar(BuildContext context) {
    return CustomAppBar(
      appBarTitleText: 'Settings',
      isBackButtonEnabled: false,
    );
  }

  @override
  Widget body(BuildContext context) {
    return _getView();
  }

  _getView() => Column(
        children: [
          ItemSettings(
            title: 'Theme',
            prefixImage: 'ic_theme.svg',
            suffixImage: 'arrow_forward.svg',
            onTap: () => _show('Theme clicked'),
          ),
          ItemSettings(
            title: 'Language',
            prefixImage: 'ic_language.svg',
            suffixImage: 'arrow_forward.svg',
            onTap: () => _show('Language clicked'),
          ),
          ItemSettings(
            title: 'Font Size',
            prefixImage: 'ic_font_size.svg',
            suffixImage: 'arrow_forward.svg',
            onTap: () => _show('Font Size clicked'),
          ),
        ],
      );

  _show(String msg) {
    Fluttertoast.showToast(
      msg: msg,
      toastLength: Toast.LENGTH_SHORT,
      gravity: ToastGravity.CENTER,
      timeInSecForIosWeb: 1,
      backgroundColor: Colors.black,
      textColor: Colors.white,
      fontSize: AppValues.padding,
    );
  }
}
