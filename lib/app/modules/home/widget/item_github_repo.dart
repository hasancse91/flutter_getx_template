import 'package:flutter/material.dart';
import 'package:flutter_getx_template/app/core/base/base_widget_mixin.dart';
import 'package:flutter_getx_template/app/core/values/app_values.dart';
import 'package:flutter_getx_template/app/core/values/text_styles.dart';
import 'package:flutter_getx_template/app/core/widget/asset_image_view.dart';
import 'package:flutter_getx_template/app/core/widget/elevated_container.dart';
import 'package:flutter_getx_template/app/modules/home/model/github_repo_ui_data.dart';
import 'package:flutter_getx_template/app/routes/app_pages.dart';
import 'package:get/get.dart';

class ItemGithubRepo extends StatelessWidget with BaseWidgetMixin {
  final GithubRepoUiData dataModel;

  ItemGithubRepo({
    Key? key,
    required this.dataModel,
  }) : super(key: key);

  @override
  Widget body(BuildContext context) {
    return InkWell(
      onTap: _onTap,
      child: ElevatedContainer(
        child: Padding(
          padding: const EdgeInsets.all(AppValues.padding),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              CircleAvatar(
                backgroundImage: NetworkImage(
                  dataModel.ownerAvatar,
                ),
                radius: 30.0,
              ),
              SizedBox(
                width: 10.0,
              ),
              _getRepoDetails(),
            ],
          ),
        ),
      ),
    );
  }

  _getRepoDetails() {
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            dataModel.repositoryName,
            style: cardTitleStyle,
            overflow: TextOverflow.ellipsis,
            maxLines: 1,
          ),
          SizedBox(
            height: 4.0,
          ),
          Text(
            dataModel.ownerLoginName,
            style: cardSubtitleStyle,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),
          SizedBox(
            height: 4.0,
          ),
          _getRepoBottomView(),
        ],
      ),
    );
  }

  _getRepoBottomView() {
    return Row(
      children: [
        _getForkView(),
        _getDetailsView(
          Icons.star_border,
          dataModel.numberOfStar.toString(),
        ),
        _getDetailsView(
          Icons.visibility_outlined,
          dataModel.watchers.toString(),
        ),
      ],
    );
  }

  _getDetailsView(IconData iconData, String value) {
    return Expanded(
      child: Row(
        children: [
          Icon(
            iconData,
            size: 20.0,
            color: Colors.grey,
          ),
          SizedBox(
            width: 2.0,
          ),
          Text(
            value,
            style: TextStyle(color: Colors.grey),
          ),
        ],
      ),
    );
  }

  _getForkView() {
    return Expanded(
      child: Row(
        children: [
          AssetImageView(
            url: "images/ic_fork.svg",
            height: 20.0,
            width: 20.0,
            color: Colors.grey,
          ),
          SizedBox(
            width: 2.0,
          ),
          Text(
            dataModel.numberOfFork.toString(),
            style: TextStyle(color: Colors.grey),
          ),
        ],
      ),
    );
  }

  void _onTap() {
    Get.toNamed(Routes.REPO_DETAILS, arguments: dataModel);
  }
}
