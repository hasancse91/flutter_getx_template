class Owner {
  int? id;
  String? login;
  String? avatarUrl;

  Owner({
    this.id,
    this.login,
    this.avatarUrl,
  });

  Owner.fromJson(dynamic json) {
    id = json['id'];
    login = json['login'];
    avatarUrl = json['avatar_url'];
  }

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['login'] = login;
    map['avatar_url'] = avatarUrl;

    return map;
  }
}
