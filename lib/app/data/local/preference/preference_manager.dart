abstract class PreferenceManager {
  static const keyToken = "token";

  Future<T?> getObj<T>(String key, T Function(Map v) f, {T? defValue});

  Future<Map?> getObject(String key);

  Future<bool> setObject(String key, Object value);

  Future<String> getString(String key, {String defaultValue = ""});

  Future<bool> setString(String key, String value);

  Future<int> getInt(String key, {int defaultValue = 0});

  Future<bool> setInt(String key, int value);

  Future<double> getDouble(String key, {double defaultValue = 0.0});

  Future<bool> setDouble(String key, double value);

  Future<bool> getBool(String key, {bool defaultValue = false});

  Future<bool> setBool(String key, bool value);

  Future<List<String>> getStringList(String key,
      {List<String> defaultValue = const []});

  Future<bool> setStringList(String key, List<String> value);

  Future<bool> remove(String key);

  Future<bool> clear();
}
