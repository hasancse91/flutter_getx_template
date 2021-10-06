abstract class PreferenceManager {
  static const keyToken = "token";

  Future<String> getString(String key, {String defValue = ""});

  Future<bool> setString(String key, String value);

  Future<int> getInt(String key, {int defValue = 0});

  Future<bool> setInt(String key, int value);

  Future<double> getDouble(String key, {double defValue = 0.0});

  Future<bool> setDouble(String key, double value);

  Future<bool> getBool(String key, {bool defValue = false});

  Future<bool> setBool(String key, bool value);

  Future<List<String>> getStringList(String key,
      {List<String> defValue = const []});

  Future<bool> setStringList(String key, List<String> value);

  Future<bool> remove(String key);
}
