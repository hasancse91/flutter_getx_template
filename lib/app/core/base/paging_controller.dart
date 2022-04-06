import 'package:get/get.dart';

import '/app/core/values/app_values.dart';

class PagingController<T> {
  List<T> listItems = [];
  int pageNumber = AppValues.defaultPageNumber;

  final Rx<bool> _loadingController = Rx(false);
  bool get isLoadingPage => _loadingController.value;
  void setIsLoading(bool value) => _loadingController(value);

  final Rx<bool> _endOfListController = Rx(false);
  bool get endOfList => _endOfListController.value;

  final Rx<bool> _isInitialLoadController = Rx(true);
  bool get isInitialLoad => _isInitialLoadController.value;

  initRefresh() {
    listItems = [];
    pageNumber = AppValues.defaultPageNumber;
    setIsLoading(false);
    _endOfListController(false);
    _isInitialLoadController(true);
  }

  bool canLoadNextPage() {
    return !isLoadingPage && !endOfList;
  }

  appendData(List<T> items) {
    if (items.isEmpty) {
      _endOfListController(true);
      pageNumber--;
    } else {
      listItems.addAll(items);
      pageNumber++;
    }
    setIsLoading(false);
    if (isInitialLoad) _isInitialLoadController(false);
  }
}
