class GithubSearchQueryParam {
  String searchKeyWord;
  int perPage;
  int pageNumber;

  GithubSearchQueryParam({
    required this.searchKeyWord,
    required this.perPage,
    required this.pageNumber,
  });

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['q'] = searchKeyWord;
    data['per_page'] = perPage;
    data['page'] = pageNumber;

    return data;
  }
}
