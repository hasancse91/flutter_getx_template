import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';

import '/app/core/values/app_colors.dart';

class NetworkImageView extends StatelessWidget {
  const NetworkImageView({
    Key? key,
    required this.imageUrl,
    this.placeholder,
    this.progressIndicator,
    this.width,
    this.height,
    this.fit,
    this.color,
  }) : super(key: key);

  final String imageUrl;
  final Widget? placeholder;
  final Widget? progressIndicator;
  final double? width;
  final double? height;
  final BoxFit? fit;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return CachedNetworkImage(
      imageUrl: imageUrl,
      placeholder: _placeholder(),
      width: width,
      height: height,
      fit: fit,
      color: color,
    );
  }

  PlaceholderWidgetBuilder? _placeholder() {
    return (context, url) {
      return placeholder ??
          const CircularProgressIndicator(
            color: AppColors.appBarColor,
          );
    };
  }
}
