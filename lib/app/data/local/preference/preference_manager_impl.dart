import 'package:shared_preferences/shared_preferences.dart';

import '/app/data/local/preference/preference_manager.dart';

class PreferenceManagerImpl implements PreferenceManager {
  final _preference = SharedPreferences.getInstance();

  @override
  Future<String> getString(String key, {String defaultValue = ""}) {
    return _preference
        .then((preference) => preference.getString(key) ?? defaultValue);
  }

  @override
  Future<bool> setString(String key, String value) {
    return _preference.then((preference) => preference.setString(key, value));
  }

  @override
  Future<int> getInt(String key, {int defaultValue = 0}) {
    return _preference
        .then((preference) => preference.getInt(key) ?? defaultValue);
  }

  @override
  Future<bool> setInt(String key, int value) {
    return _preference.then((preference) => preference.setInt(key, value));
  }

  @override
  Future<double> getDouble(String key, {double defaultValue = 0.0}) {
    return _preference
        .then((preference) => preference.getDouble(key) ?? defaultValue);
  }

  @override
  Future<bool> setDouble(String key, double value) {
    return _preference.then((preference) => preference.setDouble(key, value));
  }

  @override
  Future<bool> getBool(String key, {bool defaultValue = false}) {
    return _preference
        .then((preference) => preference.getBool(key) ?? defaultValue);
  }

  @override
  Future<bool> setBool(String key, bool value) {
    return _preference.then((preference) => preference.setBool(key, value));
  }

  @override
  Future<List<String>> getStringList(String key,
      {List<String> defaultValue = const []}) {
    return _preference
        .then((preference) => preference.getStringList(key) ?? defaultValue);
  }

  @override
  Future<bool> setStringList(String key, List<String> value) {
    return _preference
        .then((preference) => preference.setStringList(key, value));
  }

  @override
  Future<bool> remove(String key) {
    return _preference.then((preference) => preference.remove(key));
  }

  @override
  Future<bool> clear() {
    return _preference.then((preference) => preference.clear());
  }
}
