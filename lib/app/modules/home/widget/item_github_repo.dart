import 'package:flutter/material.dart';
import 'package:flutter_getx_template/app/core/base/base_widget_mixin.dart';
import 'package:flutter_getx_template/app/core/values/app_values.dart';
import 'package:flutter_getx_template/app/core/values/text_styles.dart';
import 'package:flutter_getx_template/app/core/widget/elevated_container.dart';
import 'package:flutter_getx_template/app/modules/home/model/github_repo_ui_data.dart';

class ItemGithubRepo extends StatelessWidget with BaseWidgetMixin {
  final GithubRepoUiData dataModel;

  ItemGithubRepo({
    Key? key,
    required this.dataModel,
  }) : super(key: key);

  @override
  Widget body(BuildContext context) {
    return ElevatedContainer(
        child: Padding(
      padding: const EdgeInsets.all(AppValues.padding),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(dataModel.repositoryName, style: cardTitleStyle),
          Text(dataModel.ownerLoginName, style: cardSubtitleStyle)
        ],
      ),
    ));
  }
}
