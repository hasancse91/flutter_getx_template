import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import 'package:logger/logger.dart';

import 'package:flutter_getx_template/app/core/base/base_controller.dart';
import 'package:flutter_getx_template/app/core/model/page_state.dart';
import 'package:flutter_getx_template/app/core/widget/loading.dart';
import 'package:flutter_getx_template/flavors/build_config.dart';

// ignore: must_be_immutable
abstract class BaseView<Controller extends BaseController>
    extends GetView<Controller> {
  final GlobalKey<ScaffoldState> globalKey = GlobalKey<ScaffoldState>();

  AppLocalizations get appLocalization => AppLocalizations.of(Get.context!)!;

  final Logger logger = BuildConfig.instance.config.logger;

  late TextTheme _textTheme;

  TextTheme get textTheme => _textTheme;

  late ThemeData _theme;

  ThemeData get theme => _theme;

  Widget body(BuildContext context);

  PreferredSizeWidget? appBar(BuildContext context);

  @override
  Widget build(BuildContext context) {
    _textTheme = context.textTheme;
    _theme = context.theme;

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
      value: systemUiOverlayStyle ??
          theme.appBarTheme.systemOverlayStyle ??
          SystemUiOverlayStyle(
            //Status bar color for android
            statusBarColor: statusBarColor(),
            statusBarIconBrightness: Brightness.light,
            statusBarBrightness: Brightness.light,
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
      bottomSheet: _bottomSheet(),
    );
  }

  Widget pageContent(BuildContext context) {
    return SafeArea(
      top: useTopSafeArea,
      bottom: useBottomSafeArea,
      child: GestureDetector(
        onTap: _onTapGestureDetector,
        child: body(context),
      ),
    );
  }

  void _onTapGestureDetector() {
    if (activeGestureDetector) {
      closeKeyboard();
    }
  }

  Widget showErrorSnackBar(String message) {
    final snackBar = SnackBar(content: Text(message));
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      ScaffoldMessenger.of(Get.context!).showSnackBar(snackBar);
    });

    return Container();
  }

  void showToast(String message) {
    Fluttertoast.showToast(
        msg: message, toastLength: Toast.LENGTH_SHORT, timeInSecForIosWeb: 1);
  }

  Color pageBackgroundColor() {
    return theme.colorScheme.background;
  }

  Color statusBarColor() {
    return theme.colorScheme.background;
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

  Widget _showLoading() {
    return const Loading();
  }

  Widget? _bottomSheet() {
    return Wrap(
      children: [
        bottomSheet() ?? const SizedBox.shrink(),
      ],
    );
  }

  Widget? bottomSheet() {
    return null;
  }

  SystemUiOverlayStyle? get systemUiOverlayStyle {
    return null;
  }

  bool get useTopSafeArea => true;

  bool get useBottomSafeArea => true;

  bool get activeGestureDetector => true;

  void closeKeyboard() {
    FocusManager.instance.primaryFocus?.unfocus();
  }
}
