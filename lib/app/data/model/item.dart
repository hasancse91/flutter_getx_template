import 'package:floor/floor.dart';

import '/app/data/model/owner.dart';

@Entity(tableName: 'repo')
class Item {
  @PrimaryKey()
  int? id;
  String? name;
  Owner? owner;
  int? stargazersCount;
  int? forks;
  int? watchers;
  double? score;
  String? description;

  Item({
    this.id,
    this.name,
    this.owner,
    this.description,
    this.stargazersCount,
    this.forks,
    this.watchers,
    this.score,
  });

  Item.fromJson(dynamic json) {
    id = json['id'];
    name = json['name'];
    owner = json['owner'] != null ? Owner.fromJson(json['owner']) : null;
    description = json['description'];
    stargazersCount = json['stargazers_count'];
    forks = json['forks'];
    watchers = json['watchers'];
    score = json['score'];
  }

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = id;
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
