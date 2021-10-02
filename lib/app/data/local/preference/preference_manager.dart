abstract class PreferenceManager {
  static const keyToken = "token";

  String getString(String key);

  void setString(String key, String value);
}
