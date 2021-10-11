class GithubProjectUiData {
  String repositoryName;
  String ownerLoginName;
  String ownerAvatar;
  int numberOfStar;
  int numberOfFork;
  String description;
  double score;
  int watchers;

  GithubProjectUiData({
    this.repositoryName = "",
    this.ownerLoginName = "",
    this.ownerAvatar = "",
    this.numberOfStar = 0,
    this.numberOfFork = 0,
    this.description = "",
    this.score = 0.0,
    this.watchers = 0,
  });
}
