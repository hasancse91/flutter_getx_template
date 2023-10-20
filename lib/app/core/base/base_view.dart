import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:logger/logger.dart';

import '/app/core/base/base_controller.dart';
import '/app/core/model/page_state.dart';
import '/app/core/values/app_colors.dart';
import '/app/core/widget/loading.dart';
import '/app/core/widget/empty_widget.dart';
import '/app/core/utils/utils.dart';
import '/flavors/build_config.dart';

abstract class BaseView<Controller extends BaseController>
    extends GetView<Controller> {
  final GlobalKey<ScaffoldState> globalKey = GlobalKey<ScaffoldState>();

  final Logger logger = BuildConfig.instance.config.logger;

  Widget body(BuildContext context);

  PreferredSizeWidget? appBar(BuildContext context);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Stack(
        children: [
          annotatedRegion(context),
          Obx(() => controller.pageState == PageState.LOADING
              ? _showLoading()
              : Container()),
          Obx(() => controller.errorMessage.isNotEmpty
              ? showErrorSnackBar(controller.errorMessage)
              : Container()),
          Container(),
        ],
      ),
    );
  }

  Widget annotatedRegion(BuildContext context) {
    return AnnotatedRegion(
      value: SystemUiOverlayStyle(
        //Status bar color for android
        statusBarColor: statusBarColor(),
        statusBarIconBrightness: Brightness.dark,
      ),
      child: Material(
        color: Colors.transparent,
        child: pageScaffold(context),
      ),
    );
  }

  Widget pageScaffold(BuildContext context) {
    return Scaffold(
      //sets ios status bar color
      backgroundColor: pageBackgroundColor(),
      key: globalKey,
      appBar: appBar(context),
      floatingActionButton: floatingActionButton(),
      body: pageContent(context),
      bottomNavigationBar: bottomNavigationBar(),
      drawer: drawer(),
    );
  }

  Widget pageContent(BuildContext context) {
    return SafeArea(
      child: Stack(
        children: [
          body(context),
          Obx(() => controller.pageState == PageState.EMPTY
              ? emptyPlaceholder()
              : Container()),
          Obx(() => controller.pageState == PageState.NO_INTERNET
              ? noInternalPlaceholder()
              : Container()),
        ],
      ),
    );
  }

  Widget showErrorSnackBar(String message) {
    final snackBar = SnackBar(content: Text(message));
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      ScaffoldMessenger.of(Get.context!).showSnackBar(snackBar);
    });

    return Container();
  }

  void showToast(String message) {
    ToastUtil.toast(message);
  }

  Color pageBackgroundColor() {
    return AppColors.pageBackground;
  }

  Color statusBarColor() {
    return AppColors.pageBackground;
  }

  Widget? floatingActionButton() {
    return null;
  }

  Widget? bottomNavigationBar() {
    return null;
  }

  Widget? drawer() {
    return null;
  }

  Widget emptyPlaceholder() {
    return Container(
      color: pageBackgroundColor(),
      constraints: const BoxConstraints.expand(),
      child: const EmptyWidget(
        image: null,
        title: 'No Record',
        subTitle: null,
        titleTextStyle: TextStyle(
          fontSize: 22,
          color: Color(0xff9da9c7),
          fontWeight: FontWeight.w500,
        ),
        subtitleTextStyle: TextStyle(
          fontSize: 14,
          color: Color(0xffabb8d6),
        ),
        hideBackgroundAnimation: true,
      ),
    );
  }

  Widget noInternalPlaceholder() {
    return Container(
      color: pageBackgroundColor(),
      constraints: const BoxConstraints.expand(),
      child: EmptyWidget(
        image: null,
        title: 'No Internet',
        subTitle: null,
        buttonTitle: 'Reload',
        buttonAction: controller.refreshData,
        titleTextStyle: const TextStyle(
          fontSize: 22,
          color: Color(0xff9da9c7),
          fontWeight: FontWeight.w500,
        ),
        subtitleTextStyle: const TextStyle(
          fontSize: 14,
          color: Color(0xffabb8d6),
        ),
        hideBackgroundAnimation: true,
      ),
    );
  }

  Widget _showLoading() {
    return const Loading();
  }
}
