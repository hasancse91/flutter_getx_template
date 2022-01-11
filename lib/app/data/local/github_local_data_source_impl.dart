import 'dart:async';

import 'package:flutter_getx_template/app/data/local/db/app_database.dart';
import 'package:flutter_getx_template/app/data/local/github_local_data_source.dart';
import 'package:flutter_getx_template/app/data/model/github_project_search_response.dart';

class GithubLocalDataSourceImpl implements GithubLocalDataSource {
  @override
  Future<void> insertGithubData(Item data) async {
    final database =
        $FloorAppDatabase.databaseBuilder('AppDatabase.db').build();
    database.then((db) {
      db.githubDao.insertData(data);
    });
  }
}
