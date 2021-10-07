class GithubRepoUiData {
  String repositoryName;
  String ownerLoginName;
  String ownerAvatar;
  int numberOfStar;
  int numberOfFork;
  String description;
  double score;
  int watchers;

  GithubRepoUiData({
    required this.repositoryName,
    required this.ownerLoginName,
    required this.ownerAvatar,
    required this.numberOfStar,
    required this.numberOfFork,
    required this.description,
    required this.score,
    required this.watchers,
  });
}
