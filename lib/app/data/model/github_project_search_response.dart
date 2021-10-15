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

class Item {
  Item({
    this.name,
    this.owner,
    this.description,
    this.stargazersCount,
    this.forks,
    this.watchers,
    this.score,
  });

  Item.fromJson(dynamic json) {
    name = json['name'];
    owner = json['owner'] != null ? Owner.fromJson(json['owner']) : null;
    description = json['description'];
    stargazersCount = json['stargazers_count'];
    forks = json['forks'];
    watchers = json['watchers'];
    score = json['score'];
  }

  String? name;
  Owner? owner;
  int? stargazersCount;
  int? forks;
  int? watchers;
  double? score;
  String? description;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['name'] = name;
    if (owner != null) {
      map['owner'] = owner?.toJson();
    }
    map['description'] = description;
    map['stargazers_count'] = stargazersCount;
    map['forks'] = forks;
    map['watchers'] = watchers;
    map['score'] = score;

    return map;
  }
}

class Owner {
  Owner({
    this.login,
    this.avatarUrl,
  });

  Owner.fromJson(dynamic json) {
    login = json['login'];
    avatarUrl = json['avatar_url'];
  }

  String? login;
  String? avatarUrl;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['login'] = login;
    map['avatar_url'] = avatarUrl;

    return map;
  }
}
