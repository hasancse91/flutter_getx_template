import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import '/app/core/values/app_colors.dart';
import 'package:get/get.dart';

import '../base/paging_controller.dart';
import '/app/core/utils/debouncer.dart';
import '/app/core/values/app_values.dart';

///ignore: must_be_immutable
class PagingView extends StatelessWidget {
  final Widget child;
  final Function() onLoadNextPage;
  final Future<void> Function()? onRefresh;
  final PagingController<dynamic> pagingController;

  PagingView({
    Key? key,
    required this.child,
    required this.onLoadNextPage,
    required this.pagingController,
    this.onRefresh,
  }) : super(key: key);

  final ScrollController _scrollController = ScrollController();

  final _debouncer = Debouncer(milliseconds: 500);

  @override
  Widget build(BuildContext context) {
    return NotificationListener(
      onNotification: (ScrollNotification scrollInfo) {
        var triggerFetchMoreSize =
            0.75 * _scrollController.position.maxScrollExtent;

        if (_scrollController.position.pixels >= triggerFetchMoreSize &&
            (_scrollController.position.userScrollDirection ==
                ScrollDirection.reverse)) {
          _debouncer.run(() {
            if (pagingController.canLoadNextPage()) {
              pagingController.setIsLoading(true);
              onLoadNextPage();
            }
          });
        }

        return true;
      },
      child: onRefresh == null
          ? _getScrollableView()
          : RefreshIndicator(
              child: _getScrollableView(),
              onRefresh: () async {
                pagingController.initRefresh();
                pagingController.setIsLoading(true);
                onRefresh!();
              },
            ),
    );
  }

  Widget _getScrollableView() {
    return SingleChildScrollView(
      controller: _scrollController,
      child: Column(
        children: [
          child,
          Obx(() => _getFooter()),
        ],
      ),
    );
  }

  Widget _getFooter() {
    return Container(
      margin: EdgeInsets.only(
          bottom: !pagingController.endOfList ? AppValues.margin_20 : 0),
      height: !pagingController.endOfList ? AppValues.margin_40 : 0,
      child: (!pagingController.endOfList && pagingController.isLoadingPage)
          ? const CircularProgressIndicator(
              color: AppColors.colorPrimary,
            )
          : const SizedBox(),
    );
  }
}
