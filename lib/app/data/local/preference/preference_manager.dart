abstract class PreferenceManager {
  static const DATABASE_NAME = "flutter_getx_template";
  static const KEY_TOKEN = "token";
  static const THEME = "theme";
  static const LANGUAGE = "language";

  String getString(String key, {String defaultValue = ""});

  void setString(String key, String value);

  int getInt(String key, {int defaultValue = 0});

  void setInt(String key, int value);

  double getDouble(String key, {double defaultValue = 0.0});

  void setDouble(String key, double value);

  bool getBool(String key, {bool defaultValue = false});

  void setBool(String key, bool value);

  List<String> getStringList(String key,
      {List<String> defaultValue = const []});

  void setStringList(String key, List<String> value);

  void remove(String key);

  void clear();
}
