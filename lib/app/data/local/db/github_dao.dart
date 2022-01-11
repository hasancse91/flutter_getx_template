import 'package:floor/floor.dart';
import 'package:flutter_getx_template/app/data/model/github_project_search_response.dart';

@dao
abstract class GithubDao {
  @Insert(onConflict: OnConflictStrategy.replace)
  Future<void> insertData(Item data);
}
