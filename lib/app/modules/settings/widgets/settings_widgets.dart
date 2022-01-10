import 'package:flutter/material.dart';
import 'package:flutter_getx_template/app/core/base/base_widget_mixin.dart';
import 'package:flutter_getx_template/app/core/values/app_colors.dart';
import 'package:flutter_getx_template/app/core/values/app_values.dart';
import 'package:flutter_getx_template/app/core/values/text_styles.dart';
import 'package:flutter_getx_template/app/core/widget/asset_image_view.dart';
import 'package:flutter_getx_template/app/core/widget/ripple.dart';

class ItemSettings extends StatelessWidget with BaseWidgetMixin {
  final String prefixImage;
  final String suffixImage;
  final String title;
  final Function()? onTap;

  ItemSettings(this.onTap, this.prefixImage, this.suffixImage, this.title);

  @override
  Widget body(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(AppValues.padding),
      child: Ripple(
        onTap: () => onTap,
        child: Row(
          children: [
            AssetImageView(
              fileName: prefixImage,
              height: AppValues.margin_20,
              width: AppValues.margin_20,
            ),
            const SizedBox(width: 10),
            Text(title, style: titleStyle),
            const Spacer(),
            AssetImageView(
              fileName: suffixImage,
              color: AppColors.centerTextColor,
              height: AppValues.margin_20,
              width: AppValues.margin_20,
            ),
          ],
        ),
      ),
    );
  }
}
