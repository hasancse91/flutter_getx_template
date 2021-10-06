/// total_count : 7
/// incomplete_results : false
/// items : [{"name":"classes.js","path":"src/attributes/classes.js","sha":"d7212f9dee2dcc18f084d7df8f417b80846ded5a","url":"https://api.github.com/repositories/167174/contents/src/attributes/classes.js?ref=825ac3773694e0cd23ee74895fd5aeb535b27da4","git_url":"https://api.github.com/repositories/167174/git/blobs/d7212f9dee2dcc18f084d7df8f417b80846ded5a","html_url":"https://github.com/jquery/jquery/blob/825ac3773694e0cd23ee74895fd5aeb535b27da4/src/attributes/classes.js","repository":{"id":167174,"node_id":"MDEwOlJlcG9zaXRvcnkxNjcxNzQ=","name":"jquery","full_name":"jquery/jquery","owner":{"login":"jquery","id":70142,"node_id":"MDQ6VXNlcjcwMTQy","avatar_url":"https://0.gravatar.com/avatar/6906f317a4733f4379b06c32229ef02f?d=https%3A%2F%2Fidenticons.github.com%2Ff426f04f2f9813718fb806b30e0093de.png","gravatar_id":"","url":"https://api.github.com/users/jquery","html_url":"https://github.com/jquery","followers_url":"https://api.github.com/users/jquery/followers","following_url":"https://api.github.com/users/jquery/following{/other_user}","gists_url":"https://api.github.com/users/jquery/gists{/gist_id}","starred_url":"https://api.github.com/users/jquery/starred{/owner}{/repo}","subscriptions_url":"https://api.github.com/users/jquery/subscriptions","organizations_url":"https://api.github.com/users/jquery/orgs","repos_url":"https://api.github.com/users/jquery/repos","events_url":"https://api.github.com/users/jquery/events{/privacy}","received_events_url":"https://api.github.com/users/jquery/received_events","type":"Organization","site_admin":false},"private":false,"html_url":"https://github.com/jquery/jquery","description":"jQuery JavaScript Library","fork":false,"url":"https://api.github.com/repos/jquery/jquery","forks_url":"https://api.github.com/repos/jquery/jquery/forks","keys_url":"https://api.github.com/repos/jquery/jquery/keys{/key_id}","collaborators_url":"https://api.github.com/repos/jquery/jquery/collaborators{/collaborator}","teams_url":"https://api.github.com/repos/jquery/jquery/teams","hooks_url":"https://api.github.com/repos/jquery/jquery/hooks","issue_events_url":"https://api.github.com/repos/jquery/jquery/issues/events{/number}","events_url":"https://api.github.com/repos/jquery/jquery/events","assignees_url":"https://api.github.com/repos/jquery/jquery/assignees{/user}","branches_url":"https://api.github.com/repos/jquery/jquery/branches{/branch}","tags_url":"https://api.github.com/repos/jquery/jquery/tags","blobs_url":"https://api.github.com/repos/jquery/jquery/git/blobs{/sha}","git_tags_url":"https://api.github.com/repos/jquery/jquery/git/tags{/sha}","git_refs_url":"https://api.github.com/repos/jquery/jquery/git/refs{/sha}","trees_url":"https://api.github.com/repos/jquery/jquery/git/trees{/sha}","statuses_url":"https://api.github.com/repos/jquery/jquery/statuses/{sha}","languages_url":"https://api.github.com/repos/jquery/jquery/languages","stargazers_url":"https://api.github.com/repos/jquery/jquery/stargazers","contributors_url":"https://api.github.com/repos/jquery/jquery/contributors","subscribers_url":"https://api.github.com/repos/jquery/jquery/subscribers","subscription_url":"https://api.github.com/repos/jquery/jquery/subscription","commits_url":"https://api.github.com/repos/jquery/jquery/commits{/sha}","git_commits_url":"https://api.github.com/repos/jquery/jquery/git/commits{/sha}","comments_url":"https://api.github.com/repos/jquery/jquery/comments{/number}","issue_comment_url":"https://api.github.com/repos/jquery/jquery/issues/comments/{number}","contents_url":"https://api.github.com/repos/jquery/jquery/contents/{+path}","compare_url":"https://api.github.com/repos/jquery/jquery/compare/{base}...{head}","merges_url":"https://api.github.com/repos/jquery/jquery/merges","archive_url":"https://api.github.com/repos/jquery/jquery/{archive_format}{/ref}","downloads_url":"https://api.github.com/repos/jquery/jquery/downloads","issues_url":"https://api.github.com/repos/jquery/jquery/issues{/number}","pulls_url":"https://api.github.com/repos/jquery/jquery/pulls{/number}","milestones_url":"https://api.github.com/repos/jquery/jquery/milestones{/number}","notifications_url":"https://api.github.com/repos/jquery/jquery/notifications{?since,all,participating}","labels_url":"https://api.github.com/repos/jquery/jquery/labels{/name}","deployments_url":"http://api.github.com/repos/octocat/Hello-World/deployments","releases_url":"http://api.github.com/repos/octocat/Hello-World/releases{/id}"},"score":1}]

class GithubRepoSearchResponse {
  GithubRepoSearchResponse({
    int? totalCount,
    bool? incompleteResults,
    List<Items>? items,
  }) {
    _totalCount = totalCount;
    _incompleteResults = incompleteResults;
    _items = items;
  }

  GithubRepoSearchResponse.fromJson(dynamic json) {
    _totalCount = json['total_count'];
    _incompleteResults = json['incomplete_results'];
    if (json['items'] != null) {
      _items = [];
      json['items'].forEach((v) {
        _items?.add(Items.fromJson(v));
      });
    }
  }
  int? _totalCount;
  bool? _incompleteResults;
  List<Items>? _items;

  int? get totalCount => _totalCount;
  bool? get incompleteResults => _incompleteResults;
  List<Items>? get items => _items;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['total_count'] = _totalCount;
    map['incomplete_results'] = _incompleteResults;
    if (_items != null) {
      map['items'] = _items?.map((v) => v.toJson()).toList();
    }
    return map;
  }
}

/// name : "classes.js"
/// path : "src/attributes/classes.js"
/// sha : "d7212f9dee2dcc18f084d7df8f417b80846ded5a"
/// url : "https://api.github.com/repositories/167174/contents/src/attributes/classes.js?ref=825ac3773694e0cd23ee74895fd5aeb535b27da4"
/// git_url : "https://api.github.com/repositories/167174/git/blobs/d7212f9dee2dcc18f084d7df8f417b80846ded5a"
/// html_url : "https://github.com/jquery/jquery/blob/825ac3773694e0cd23ee74895fd5aeb535b27da4/src/attributes/classes.js"
/// repository : {"id":167174,"node_id":"MDEwOlJlcG9zaXRvcnkxNjcxNzQ=","name":"jquery","full_name":"jquery/jquery","owner":{"login":"jquery","id":70142,"node_id":"MDQ6VXNlcjcwMTQy","avatar_url":"https://0.gravatar.com/avatar/6906f317a4733f4379b06c32229ef02f?d=https%3A%2F%2Fidenticons.github.com%2Ff426f04f2f9813718fb806b30e0093de.png","gravatar_id":"","url":"https://api.github.com/users/jquery","html_url":"https://github.com/jquery","followers_url":"https://api.github.com/users/jquery/followers","following_url":"https://api.github.com/users/jquery/following{/other_user}","gists_url":"https://api.github.com/users/jquery/gists{/gist_id}","starred_url":"https://api.github.com/users/jquery/starred{/owner}{/repo}","subscriptions_url":"https://api.github.com/users/jquery/subscriptions","organizations_url":"https://api.github.com/users/jquery/orgs","repos_url":"https://api.github.com/users/jquery/repos","events_url":"https://api.github.com/users/jquery/events{/privacy}","received_events_url":"https://api.github.com/users/jquery/received_events","type":"Organization","site_admin":false},"private":false,"html_url":"https://github.com/jquery/jquery","description":"jQuery JavaScript Library","fork":false,"url":"https://api.github.com/repos/jquery/jquery","forks_url":"https://api.github.com/repos/jquery/jquery/forks","keys_url":"https://api.github.com/repos/jquery/jquery/keys{/key_id}","collaborators_url":"https://api.github.com/repos/jquery/jquery/collaborators{/collaborator}","teams_url":"https://api.github.com/repos/jquery/jquery/teams","hooks_url":"https://api.github.com/repos/jquery/jquery/hooks","issue_events_url":"https://api.github.com/repos/jquery/jquery/issues/events{/number}","events_url":"https://api.github.com/repos/jquery/jquery/events","assignees_url":"https://api.github.com/repos/jquery/jquery/assignees{/user}","branches_url":"https://api.github.com/repos/jquery/jquery/branches{/branch}","tags_url":"https://api.github.com/repos/jquery/jquery/tags","blobs_url":"https://api.github.com/repos/jquery/jquery/git/blobs{/sha}","git_tags_url":"https://api.github.com/repos/jquery/jquery/git/tags{/sha}","git_refs_url":"https://api.github.com/repos/jquery/jquery/git/refs{/sha}","trees_url":"https://api.github.com/repos/jquery/jquery/git/trees{/sha}","statuses_url":"https://api.github.com/repos/jquery/jquery/statuses/{sha}","languages_url":"https://api.github.com/repos/jquery/jquery/languages","stargazers_url":"https://api.github.com/repos/jquery/jquery/stargazers","contributors_url":"https://api.github.com/repos/jquery/jquery/contributors","subscribers_url":"https://api.github.com/repos/jquery/jquery/subscribers","subscription_url":"https://api.github.com/repos/jquery/jquery/subscription","commits_url":"https://api.github.com/repos/jquery/jquery/commits{/sha}","git_commits_url":"https://api.github.com/repos/jquery/jquery/git/commits{/sha}","comments_url":"https://api.github.com/repos/jquery/jquery/comments{/number}","issue_comment_url":"https://api.github.com/repos/jquery/jquery/issues/comments/{number}","contents_url":"https://api.github.com/repos/jquery/jquery/contents/{+path}","compare_url":"https://api.github.com/repos/jquery/jquery/compare/{base}...{head}","merges_url":"https://api.github.com/repos/jquery/jquery/merges","archive_url":"https://api.github.com/repos/jquery/jquery/{archive_format}{/ref}","downloads_url":"https://api.github.com/repos/jquery/jquery/downloads","issues_url":"https://api.github.com/repos/jquery/jquery/issues{/number}","pulls_url":"https://api.github.com/repos/jquery/jquery/pulls{/number}","milestones_url":"https://api.github.com/repos/jquery/jquery/milestones{/number}","notifications_url":"https://api.github.com/repos/jquery/jquery/notifications{?since,all,participating}","labels_url":"https://api.github.com/repos/jquery/jquery/labels{/name}","deployments_url":"http://api.github.com/repos/octocat/Hello-World/deployments","releases_url":"http://api.github.com/repos/octocat/Hello-World/releases{/id}"}
/// score : 1

class Items {
  Items({
    String? name,
    String? path,
    String? sha,
    String? url,
    String? gitUrl,
    String? htmlUrl,
    Repository? repository,
    double? score,
    Owner? owner,
  }) {
    _name = name;
    _path = path;
    _sha = sha;
    _url = url;
    _gitUrl = gitUrl;
    _htmlUrl = htmlUrl;
    _repository = repository;
    _score = score;
    _owner = owner;
  }

  Items.fromJson(dynamic json) {
    _name = json['name'];
    _path = json['path'];
    _sha = json['sha'];
    _url = json['url'];
    _gitUrl = json['git_url'];
    _htmlUrl = json['html_url'];
    _repository = json['repository'] != null
        ? Repository.fromJson(json['repository'])
        : null;
    _score = json['score'];
    _owner = json['owner'] != null ? Owner.fromJson(json['owner']) : null;
  }
  String? _name;
  String? _path;
  String? _sha;
  String? _url;
  String? _gitUrl;
  String? _htmlUrl;
  Repository? _repository;
  double? _score;
  Owner? _owner;

  String? get name => _name;
  String? get path => _path;
  String? get sha => _sha;
  String? get url => _url;
  String? get gitUrl => _gitUrl;
  String? get htmlUrl => _htmlUrl;
  Repository? get repository => _repository;
  double? get score => _score;
  Owner? get owner => _owner;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['name'] = _name;
    map['path'] = _path;
    map['sha'] = _sha;
    map['url'] = _url;
    map['git_url'] = _gitUrl;
    map['html_url'] = _htmlUrl;
    if (_repository != null) {
      map['repository'] = _repository?.toJson();
    }
    map['score'] = _score;
    if (_owner != null) {
      map['owner'] = _owner?.toJson();
    }
    return map;
  }
}

/// id : 167174
/// node_id : "MDEwOlJlcG9zaXRvcnkxNjcxNzQ="
/// name : "jquery"
/// full_name : "jquery/jquery"
/// owner : {"login":"jquery","id":70142,"node_id":"MDQ6VXNlcjcwMTQy","avatar_url":"https://0.gravatar.com/avatar/6906f317a4733f4379b06c32229ef02f?d=https%3A%2F%2Fidenticons.github.com%2Ff426f04f2f9813718fb806b30e0093de.png","gravatar_id":"","url":"https://api.github.com/users/jquery","html_url":"https://github.com/jquery","followers_url":"https://api.github.com/users/jquery/followers","following_url":"https://api.github.com/users/jquery/following{/other_user}","gists_url":"https://api.github.com/users/jquery/gists{/gist_id}","starred_url":"https://api.github.com/users/jquery/starred{/owner}{/repo}","subscriptions_url":"https://api.github.com/users/jquery/subscriptions","organizations_url":"https://api.github.com/users/jquery/orgs","repos_url":"https://api.github.com/users/jquery/repos","events_url":"https://api.github.com/users/jquery/events{/privacy}","received_events_url":"https://api.github.com/users/jquery/received_events","type":"Organization","site_admin":false}
/// private : false
/// html_url : "https://github.com/jquery/jquery"
/// description : "jQuery JavaScript Library"
/// fork : false
/// url : "https://api.github.com/repos/jquery/jquery"
/// forks_url : "https://api.github.com/repos/jquery/jquery/forks"
/// keys_url : "https://api.github.com/repos/jquery/jquery/keys{/key_id}"
/// collaborators_url : "https://api.github.com/repos/jquery/jquery/collaborators{/collaborator}"
/// teams_url : "https://api.github.com/repos/jquery/jquery/teams"
/// hooks_url : "https://api.github.com/repos/jquery/jquery/hooks"
/// issue_events_url : "https://api.github.com/repos/jquery/jquery/issues/events{/number}"
/// events_url : "https://api.github.com/repos/jquery/jquery/events"
/// assignees_url : "https://api.github.com/repos/jquery/jquery/assignees{/user}"
/// branches_url : "https://api.github.com/repos/jquery/jquery/branches{/branch}"
/// tags_url : "https://api.github.com/repos/jquery/jquery/tags"
/// blobs_url : "https://api.github.com/repos/jquery/jquery/git/blobs{/sha}"
/// git_tags_url : "https://api.github.com/repos/jquery/jquery/git/tags{/sha}"
/// git_refs_url : "https://api.github.com/repos/jquery/jquery/git/refs{/sha}"
/// trees_url : "https://api.github.com/repos/jquery/jquery/git/trees{/sha}"
/// statuses_url : "https://api.github.com/repos/jquery/jquery/statuses/{sha}"
/// languages_url : "https://api.github.com/repos/jquery/jquery/languages"
/// stargazers_url : "https://api.github.com/repos/jquery/jquery/stargazers"
/// contributors_url : "https://api.github.com/repos/jquery/jquery/contributors"
/// subscribers_url : "https://api.github.com/repos/jquery/jquery/subscribers"
/// subscription_url : "https://api.github.com/repos/jquery/jquery/subscription"
/// commits_url : "https://api.github.com/repos/jquery/jquery/commits{/sha}"
/// git_commits_url : "https://api.github.com/repos/jquery/jquery/git/commits{/sha}"
/// comments_url : "https://api.github.com/repos/jquery/jquery/comments{/number}"
/// issue_comment_url : "https://api.github.com/repos/jquery/jquery/issues/comments/{number}"
/// contents_url : "https://api.github.com/repos/jquery/jquery/contents/{+path}"
/// compare_url : "https://api.github.com/repos/jquery/jquery/compare/{base}...{head}"
/// merges_url : "https://api.github.com/repos/jquery/jquery/merges"
/// archive_url : "https://api.github.com/repos/jquery/jquery/{archive_format}{/ref}"
/// downloads_url : "https://api.github.com/repos/jquery/jquery/downloads"
/// issues_url : "https://api.github.com/repos/jquery/jquery/issues{/number}"
/// pulls_url : "https://api.github.com/repos/jquery/jquery/pulls{/number}"
/// milestones_url : "https://api.github.com/repos/jquery/jquery/milestones{/number}"
/// notifications_url : "https://api.github.com/repos/jquery/jquery/notifications{?since,all,participating}"
/// labels_url : "https://api.github.com/repos/jquery/jquery/labels{/name}"
/// deployments_url : "http://api.github.com/repos/octocat/Hello-World/deployments"
/// releases_url : "http://api.github.com/repos/octocat/Hello-World/releases{/id}"

class Repository {
  Repository({
    int? id,
    String? nodeId,
    String? name,
    String? fullName,
    Owner? owner,
    bool? private,
    String? htmlUrl,
    String? description,
    bool? fork,
    String? url,
    String? forksUrl,
    String? keysUrl,
    String? collaboratorsUrl,
    String? teamsUrl,
    String? hooksUrl,
    String? issueEventsUrl,
    String? eventsUrl,
    String? assigneesUrl,
    String? branchesUrl,
    String? tagsUrl,
    String? blobsUrl,
    String? gitTagsUrl,
    String? gitRefsUrl,
    String? treesUrl,
    String? statusesUrl,
    String? languagesUrl,
    String? stargazersUrl,
    String? contributorsUrl,
    String? subscribersUrl,
    String? subscriptionUrl,
    String? commitsUrl,
    String? gitCommitsUrl,
    String? commentsUrl,
    String? issueCommentUrl,
    String? contentsUrl,
    String? compareUrl,
    String? mergesUrl,
    String? archiveUrl,
    String? downloadsUrl,
    String? issuesUrl,
    String? pullsUrl,
    String? milestonesUrl,
    String? notificationsUrl,
    String? labelsUrl,
    String? deploymentsUrl,
    String? releasesUrl,
  }) {
    _id = id;
    _nodeId = nodeId;
    _name = name;
    _fullName = fullName;
    _owner = owner;
    _private = private;
    _htmlUrl = htmlUrl;
    _description = description;
    _fork = fork;
    _url = url;
    _forksUrl = forksUrl;
    _keysUrl = keysUrl;
    _collaboratorsUrl = collaboratorsUrl;
    _teamsUrl = teamsUrl;
    _hooksUrl = hooksUrl;
    _issueEventsUrl = issueEventsUrl;
    _eventsUrl = eventsUrl;
    _assigneesUrl = assigneesUrl;
    _branchesUrl = branchesUrl;
    _tagsUrl = tagsUrl;
    _blobsUrl = blobsUrl;
    _gitTagsUrl = gitTagsUrl;
    _gitRefsUrl = gitRefsUrl;
    _treesUrl = treesUrl;
    _statusesUrl = statusesUrl;
    _languagesUrl = languagesUrl;
    _stargazersUrl = stargazersUrl;
    _contributorsUrl = contributorsUrl;
    _subscribersUrl = subscribersUrl;
    _subscriptionUrl = subscriptionUrl;
    _commitsUrl = commitsUrl;
    _gitCommitsUrl = gitCommitsUrl;
    _commentsUrl = commentsUrl;
    _issueCommentUrl = issueCommentUrl;
    _contentsUrl = contentsUrl;
    _compareUrl = compareUrl;
    _mergesUrl = mergesUrl;
    _archiveUrl = archiveUrl;
    _downloadsUrl = downloadsUrl;
    _issuesUrl = issuesUrl;
    _pullsUrl = pullsUrl;
    _milestonesUrl = milestonesUrl;
    _notificationsUrl = notificationsUrl;
    _labelsUrl = labelsUrl;
    _deploymentsUrl = deploymentsUrl;
    _releasesUrl = releasesUrl;
  }

  Repository.fromJson(dynamic json) {
    _id = json['id'];
    _nodeId = json['node_id'];
    _name = json['name'];
    _fullName = json['full_name'];
    _owner = json['owner'] != null ? Owner.fromJson(json['owner']) : null;
    _private = json['private'];
    _htmlUrl = json['html_url'];
    _description = json['description'];
    _fork = json['fork'];
    _url = json['url'];
    _forksUrl = json['forks_url'];
    _keysUrl = json['keys_url'];
    _collaboratorsUrl = json['collaborators_url'];
    _teamsUrl = json['teams_url'];
    _hooksUrl = json['hooks_url'];
    _issueEventsUrl = json['issue_events_url'];
    _eventsUrl = json['events_url'];
    _assigneesUrl = json['assignees_url'];
    _branchesUrl = json['branches_url'];
    _tagsUrl = json['tags_url'];
    _blobsUrl = json['blobs_url'];
    _gitTagsUrl = json['git_tags_url'];
    _gitRefsUrl = json['git_refs_url'];
    _treesUrl = json['trees_url'];
    _statusesUrl = json['statuses_url'];
    _languagesUrl = json['languages_url'];
    _stargazersUrl = json['stargazers_url'];
    _contributorsUrl = json['contributors_url'];
    _subscribersUrl = json['subscribers_url'];
    _subscriptionUrl = json['subscription_url'];
    _commitsUrl = json['commits_url'];
    _gitCommitsUrl = json['git_commits_url'];
    _commentsUrl = json['comments_url'];
    _issueCommentUrl = json['issue_comment_url'];
    _contentsUrl = json['contents_url'];
    _compareUrl = json['compare_url'];
    _mergesUrl = json['merges_url'];
    _archiveUrl = json['archive_url'];
    _downloadsUrl = json['downloads_url'];
    _issuesUrl = json['issues_url'];
    _pullsUrl = json['pulls_url'];
    _milestonesUrl = json['milestones_url'];
    _notificationsUrl = json['notifications_url'];
    _labelsUrl = json['labels_url'];
    _deploymentsUrl = json['deployments_url'];
    _releasesUrl = json['releases_url'];
  }
  int? _id;
  String? _nodeId;
  String? _name;
  String? _fullName;
  Owner? _owner;
  bool? _private;
  String? _htmlUrl;
  String? _description;
  bool? _fork;
  String? _url;
  String? _forksUrl;
  String? _keysUrl;
  String? _collaboratorsUrl;
  String? _teamsUrl;
  String? _hooksUrl;
  String? _issueEventsUrl;
  String? _eventsUrl;
  String? _assigneesUrl;
  String? _branchesUrl;
  String? _tagsUrl;
  String? _blobsUrl;
  String? _gitTagsUrl;
  String? _gitRefsUrl;
  String? _treesUrl;
  String? _statusesUrl;
  String? _languagesUrl;
  String? _stargazersUrl;
  String? _contributorsUrl;
  String? _subscribersUrl;
  String? _subscriptionUrl;
  String? _commitsUrl;
  String? _gitCommitsUrl;
  String? _commentsUrl;
  String? _issueCommentUrl;
  String? _contentsUrl;
  String? _compareUrl;
  String? _mergesUrl;
  String? _archiveUrl;
  String? _downloadsUrl;
  String? _issuesUrl;
  String? _pullsUrl;
  String? _milestonesUrl;
  String? _notificationsUrl;
  String? _labelsUrl;
  String? _deploymentsUrl;
  String? _releasesUrl;

  int? get id => _id;
  String? get nodeId => _nodeId;
  String? get name => _name;
  String? get fullName => _fullName;
  Owner? get owner => _owner;
  bool? get private => _private;
  String? get htmlUrl => _htmlUrl;
  String? get description => _description;
  bool? get fork => _fork;
  String? get url => _url;
  String? get forksUrl => _forksUrl;
  String? get keysUrl => _keysUrl;
  String? get collaboratorsUrl => _collaboratorsUrl;
  String? get teamsUrl => _teamsUrl;
  String? get hooksUrl => _hooksUrl;
  String? get issueEventsUrl => _issueEventsUrl;
  String? get eventsUrl => _eventsUrl;
  String? get assigneesUrl => _assigneesUrl;
  String? get branchesUrl => _branchesUrl;
  String? get tagsUrl => _tagsUrl;
  String? get blobsUrl => _blobsUrl;
  String? get gitTagsUrl => _gitTagsUrl;
  String? get gitRefsUrl => _gitRefsUrl;
  String? get treesUrl => _treesUrl;
  String? get statusesUrl => _statusesUrl;
  String? get languagesUrl => _languagesUrl;
  String? get stargazersUrl => _stargazersUrl;
  String? get contributorsUrl => _contributorsUrl;
  String? get subscribersUrl => _subscribersUrl;
  String? get subscriptionUrl => _subscriptionUrl;
  String? get commitsUrl => _commitsUrl;
  String? get gitCommitsUrl => _gitCommitsUrl;
  String? get commentsUrl => _commentsUrl;
  String? get issueCommentUrl => _issueCommentUrl;
  String? get contentsUrl => _contentsUrl;
  String? get compareUrl => _compareUrl;
  String? get mergesUrl => _mergesUrl;
  String? get archiveUrl => _archiveUrl;
  String? get downloadsUrl => _downloadsUrl;
  String? get issuesUrl => _issuesUrl;
  String? get pullsUrl => _pullsUrl;
  String? get milestonesUrl => _milestonesUrl;
  String? get notificationsUrl => _notificationsUrl;
  String? get labelsUrl => _labelsUrl;
  String? get deploymentsUrl => _deploymentsUrl;
  String? get releasesUrl => _releasesUrl;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['node_id'] = _nodeId;
    map['name'] = _name;
    map['full_name'] = _fullName;
    if (_owner != null) {
      map['owner'] = _owner?.toJson();
    }
    map['private'] = _private;
    map['html_url'] = _htmlUrl;
    map['description'] = _description;
    map['fork'] = _fork;
    map['url'] = _url;
    map['forks_url'] = _forksUrl;
    map['keys_url'] = _keysUrl;
    map['collaborators_url'] = _collaboratorsUrl;
    map['teams_url'] = _teamsUrl;
    map['hooks_url'] = _hooksUrl;
    map['issue_events_url'] = _issueEventsUrl;
    map['events_url'] = _eventsUrl;
    map['assignees_url'] = _assigneesUrl;
    map['branches_url'] = _branchesUrl;
    map['tags_url'] = _tagsUrl;
    map['blobs_url'] = _blobsUrl;
    map['git_tags_url'] = _gitTagsUrl;
    map['git_refs_url'] = _gitRefsUrl;
    map['trees_url'] = _treesUrl;
    map['statuses_url'] = _statusesUrl;
    map['languages_url'] = _languagesUrl;
    map['stargazers_url'] = _stargazersUrl;
    map['contributors_url'] = _contributorsUrl;
    map['subscribers_url'] = _subscribersUrl;
    map['subscription_url'] = _subscriptionUrl;
    map['commits_url'] = _commitsUrl;
    map['git_commits_url'] = _gitCommitsUrl;
    map['comments_url'] = _commentsUrl;
    map['issue_comment_url'] = _issueCommentUrl;
    map['contents_url'] = _contentsUrl;
    map['compare_url'] = _compareUrl;
    map['merges_url'] = _mergesUrl;
    map['archive_url'] = _archiveUrl;
    map['downloads_url'] = _downloadsUrl;
    map['issues_url'] = _issuesUrl;
    map['pulls_url'] = _pullsUrl;
    map['milestones_url'] = _milestonesUrl;
    map['notifications_url'] = _notificationsUrl;
    map['labels_url'] = _labelsUrl;
    map['deployments_url'] = _deploymentsUrl;
    map['releases_url'] = _releasesUrl;
    return map;
  }
}

/// login : "jquery"
/// id : 70142
/// node_id : "MDQ6VXNlcjcwMTQy"
/// avatar_url : "https://0.gravatar.com/avatar/6906f317a4733f4379b06c32229ef02f?d=https%3A%2F%2Fidenticons.github.com%2Ff426f04f2f9813718fb806b30e0093de.png"
/// gravatar_id : ""
/// url : "https://api.github.com/users/jquery"
/// html_url : "https://github.com/jquery"
/// followers_url : "https://api.github.com/users/jquery/followers"
/// following_url : "https://api.github.com/users/jquery/following{/other_user}"
/// gists_url : "https://api.github.com/users/jquery/gists{/gist_id}"
/// starred_url : "https://api.github.com/users/jquery/starred{/owner}{/repo}"
/// subscriptions_url : "https://api.github.com/users/jquery/subscriptions"
/// organizations_url : "https://api.github.com/users/jquery/orgs"
/// repos_url : "https://api.github.com/users/jquery/repos"
/// events_url : "https://api.github.com/users/jquery/events{/privacy}"
/// received_events_url : "https://api.github.com/users/jquery/received_events"
/// type : "Organization"
/// site_admin : false

class Owner {
  Owner({
    String? login,
    int? id,
    String? nodeId,
    String? avatarUrl,
    String? gravatarId,
    String? url,
    String? htmlUrl,
    String? followersUrl,
    String? followingUrl,
    String? gistsUrl,
    String? starredUrl,
    String? subscriptionsUrl,
    String? organizationsUrl,
    String? reposUrl,
    String? eventsUrl,
    String? receivedEventsUrl,
    String? type,
    bool? siteAdmin,
  }) {
    _login = login;
    _id = id;
    _nodeId = nodeId;
    _avatarUrl = avatarUrl;
    _gravatarId = gravatarId;
    _url = url;
    _htmlUrl = htmlUrl;
    _followersUrl = followersUrl;
    _followingUrl = followingUrl;
    _gistsUrl = gistsUrl;
    _starredUrl = starredUrl;
    _subscriptionsUrl = subscriptionsUrl;
    _organizationsUrl = organizationsUrl;
    _reposUrl = reposUrl;
    _eventsUrl = eventsUrl;
    _receivedEventsUrl = receivedEventsUrl;
    _type = type;
    _siteAdmin = siteAdmin;
  }

  Owner.fromJson(dynamic json) {
    _login = json['login'];
    _id = json['id'];
    _nodeId = json['node_id'];
    _avatarUrl = json['avatar_url'];
    _gravatarId = json['gravatar_id'];
    _url = json['url'];
    _htmlUrl = json['html_url'];
    _followersUrl = json['followers_url'];
    _followingUrl = json['following_url'];
    _gistsUrl = json['gists_url'];
    _starredUrl = json['starred_url'];
    _subscriptionsUrl = json['subscriptions_url'];
    _organizationsUrl = json['organizations_url'];
    _reposUrl = json['repos_url'];
    _eventsUrl = json['events_url'];
    _receivedEventsUrl = json['received_events_url'];
    _type = json['type'];
    _siteAdmin = json['site_admin'];
  }
  String? _login;
  int? _id;
  String? _nodeId;
  String? _avatarUrl;
  String? _gravatarId;
  String? _url;
  String? _htmlUrl;
  String? _followersUrl;
  String? _followingUrl;
  String? _gistsUrl;
  String? _starredUrl;
  String? _subscriptionsUrl;
  String? _organizationsUrl;
  String? _reposUrl;
  String? _eventsUrl;
  String? _receivedEventsUrl;
  String? _type;
  bool? _siteAdmin;

  String? get login => _login;
  int? get id => _id;
  String? get nodeId => _nodeId;
  String? get avatarUrl => _avatarUrl;
  String? get gravatarId => _gravatarId;
  String? get url => _url;
  String? get htmlUrl => _htmlUrl;
  String? get followersUrl => _followersUrl;
  String? get followingUrl => _followingUrl;
  String? get gistsUrl => _gistsUrl;
  String? get starredUrl => _starredUrl;
  String? get subscriptionsUrl => _subscriptionsUrl;
  String? get organizationsUrl => _organizationsUrl;
  String? get reposUrl => _reposUrl;
  String? get eventsUrl => _eventsUrl;
  String? get receivedEventsUrl => _receivedEventsUrl;
  String? get type => _type;
  bool? get siteAdmin => _siteAdmin;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['login'] = _login;
    map['id'] = _id;
    map['node_id'] = _nodeId;
    map['avatar_url'] = _avatarUrl;
    map['gravatar_id'] = _gravatarId;
    map['url'] = _url;
    map['html_url'] = _htmlUrl;
    map['followers_url'] = _followersUrl;
    map['following_url'] = _followingUrl;
    map['gists_url'] = _gistsUrl;
    map['starred_url'] = _starredUrl;
    map['subscriptions_url'] = _subscriptionsUrl;
    map['organizations_url'] = _organizationsUrl;
    map['repos_url'] = _reposUrl;
    map['events_url'] = _eventsUrl;
    map['received_events_url'] = _receivedEventsUrl;
    map['type'] = _type;
    map['site_admin'] = _siteAdmin;
    return map;
  }
}
