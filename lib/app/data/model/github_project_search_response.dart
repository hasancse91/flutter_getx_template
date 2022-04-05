import '/app/data/model/item.dart';

class GithubProjectSearchResponse {
  GithubProjectSearchResponse({
    this.totalCount,
    this.incompleteResults,
    this.items,
  });

  GithubProjectSearchResponse.fromJson(dynamic json) {
    totalCount = json['total_count'];
    incompleteResults = json['incomplete_results'];
    if (json['items'] != null) {
      items = [];
      json['items'].forEach((v) {
        items?.add(Item.fromJson(v));
      });
    }
  }

  int? totalCount;
  bool? incompleteResults;
  List<Item>? items;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['total_count'] = totalCount;
    map['incomplete_results'] = incompleteResults;
    if (items != null) {
      map['items'] = items?.map((v) => v.toJson()).toList();
    }

    return map;
  }
}
