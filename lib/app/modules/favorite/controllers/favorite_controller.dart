import 'package:oktoast/oktoast.dart';

import '/app/core/base/base_controller.dart';
import '/app/core/model/page_state.dart';

class FavoriteController extends BaseController {
  @override
  void refreshData() {
    super.refreshData();
    showToast("refreshData");
  }

  void switchPageState() {
    if (pageState == PageState.DEFAULT) {
      updatePageState(PageState.LOADING);
      showToast("switch page stage LOADING");
      return;
    }

    if (pageState == PageState.LOADING) {
      updatePageState(PageState.SUCCESS);
      showToast("switch page stage SUCCESS");
      return;
    }

    if (pageState == PageState.SUCCESS) {
      updatePageState(PageState.EMPTY);
      showToast("switch page stage EMPTY");
      return;
    }

    if (pageState == PageState.EMPTY) {
      updatePageState(PageState.FAILED);
      showToast("switch page stage FAILED");
      return;
    }

    if (pageState == PageState.FAILED) {
      updatePageState(PageState.NO_INTERNET);
      showToast("switch page stage NO_INTERNET");
      return;
    }

    if (pageState == PageState.NO_INTERNET) {
      updatePageState(PageState.DEFAULT);
      showToast("switch page stage DEFAULT");
      return;
    }
  }
}
