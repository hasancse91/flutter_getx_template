import 'package:flutter_getx_template/app/data/model/github_project_search_response.dart';

abstract class GithubLocalDataSource {
  Future<void> insertGithubData(Item data);
}
