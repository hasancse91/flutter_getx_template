import 'package:flutter/material.dart';
import 'package:flutter_getx_template/app/core/values/app_values.dart';
import 'package:flutter_getx_template/app/core/values/text_styles.dart';
import 'package:flutter_getx_template/app/core/widget/ripple.dart';
import 'package:fluttertoast/fluttertoast.dart';

class SettingsWidgets extends StatelessWidget {
  final toast, prefixIcon, suffixIcon, title;

  const SettingsWidgets(
      this.toast, this.prefixIcon, this.suffixIcon, this.title);

  static const dp16 = 16.0;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(AppValues.padding),
      child: Ripple(
          onTap: () => _show(toast),
          child: Row(
            children: [
              Icon(prefixIcon),
              const SizedBox(width: 10),
              Text(title, style: titleStyle),
              const Spacer(),
              Icon(suffixIcon, color: Colors.grey),
            ],
          )),
    );
  }

  void _show(String msg) {
    Fluttertoast.showToast(
      msg: msg,
      toastLength: Toast.LENGTH_SHORT,
      gravity: ToastGravity.CENTER,
      timeInSecForIosWeb: 1,
      backgroundColor: Colors.black,
      textColor: Colors.white,
      fontSize: dp16,
    );
  }
}
