abstract class PreferenceManager {
  static const keyToken = "token";

  String getString(String key);

  void setString(String key, String value);

  int getInt(String key);

  void setInt(String key, int value);

  double getDouble(String key);

  void setDouble(String key, double value);

  bool getBool(String key);

  void setBool(String key, bool value);

  List<String> getStringList(String key);

  void setStringList(String key, List<String> value);

  bool remove(String key);
}
