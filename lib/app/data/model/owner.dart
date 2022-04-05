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
