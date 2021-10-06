abstract class PreferenceManager {
  static const keyToken = "token";

  String getString(String key, {String defValue = ""});

  void setString(String key, String value);

  int getInt(String key, {int defValue = 0});

  void setInt(String key, int value);

  double getDouble(String key, {double defValue = 0.0});

  void setDouble(String key, double value);

  bool getBool(String key, {bool defValue = false});

  void setBool(String key, bool value);

  List<String> getStringList(String key, {List<String> defValue = const []});

  void setStringList(String key, List<String> value);

  bool remove(String key);
}
