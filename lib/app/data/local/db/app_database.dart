import 'dart:async';

import 'package:floor/floor.dart';
import 'package:flutter_getx_template/app/data/local/db/github_dao.dart';
import 'package:flutter_getx_template/app/data/model/github_project_search_response.dart';
import 'package:sqflite/sqflite.dart' as sqflite;

part 'app_database.g.dart';

@Database(version: 1, entities: [Item])
abstract class AppDatabase extends FloorDatabase {
  GithubDao get githubDao;
}
