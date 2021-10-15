import '/app/core/values/app_values.dart';

class GithubSearchQueryParam {
  String searchKeyWord;
  int perPage;
  int pageNumber;

  GithubSearchQueryParam({
    required this.searchKeyWord,
    this.perPage = AppValues.defaultPageSize,
    this.pageNumber = AppValues.defaultPageNumber,
  });

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['q'] = searchKeyWord;
    data['per_page'] = perPage;
    data['page'] = pageNumber;

    return data;
  }
}
