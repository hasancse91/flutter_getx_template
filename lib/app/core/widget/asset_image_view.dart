import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AssetImageView extends StatelessWidget {
  const AssetImageView({
    Key? key,
    required this.url,
    this.height,
    this.width,
    this.color,
  }) : super(key: key);

  final String url;
  final double? height;
  final double? width;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return _getView();
  }

  Widget _getView() {
    if (url.length > 4 &&
        url.substring(url.length - 4, url.length - 3) == '.') {
      String mimType = url.substring(url.length - 4, url.length).toLowerCase();
      if (mimType == ".svg") {
        return SvgPicture.asset(
          url,
          height: height,
          width: width,
          color: color ?? Colors.black,
        );
      } else if (mimType == ".png" || mimType == ".jpg") {
        return Image.asset(
          url,
          height: height,
          width: width,
          color: color,
        );
      } else {
        return Icon(
          Icons.image_not_supported_outlined,
          size: width,
          color: color,
        );
      }
    } else if (url.length > 5 &&
        url.substring(url.length - 5, url.length - 4) == '.') {
      String mimType = url.substring(url.length - 5, url.length).toLowerCase();
      if (mimType == ".jpeg") {
        return Image.asset(
          url,
          height: height,
          width: width,
          color: color,
        );
      } else {
        return Icon(
          Icons.image_not_supported_outlined,
          size: width,
          color: color,
        );
      }
    } else {
      return Icon(
        Icons.image_not_supported_outlined,
        size: width,
        color: color,
      );
    }
  }
}
