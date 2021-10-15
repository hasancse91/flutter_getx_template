import '/app/core/model/page_state.dart';

class PageStatus {
  final bool isSuccess;
  final String message;
  final String title;
  final String nextRoute;
  final PageState pageState;

  PageStatus({
    this.isSuccess = false,
    this.title = "",
    this.message = "",
    this.nextRoute = "",
    this.pageState = PageState.DEFAULT,
  });
}
