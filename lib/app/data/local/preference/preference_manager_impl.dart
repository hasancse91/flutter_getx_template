import 'package:flutter_getx_template/app/data/local/preference/preference_manager.dart';
import 'package:shared_preferences/shared_preferences.dart';

class PreferenceManagerImpl implements PreferenceManager {
  var _preference = SharedPreferences.getInstance();

  @override
  Future<String> getString(String key, {String defaultValue = ""}) async {
    final SharedPreferences pref = await _preference;
    return await pref.getString(key) ?? defaultValue;
  }

  @override
  Future<bool> setString(String key, String value) async {
    final SharedPreferences pref = await _preference;
    return await pref.setString(key, value);
  }

  @override
  Future<int> getInt(String key, {int defaultValue = 0}) async {
    final SharedPreferences pref = await _preference;
    return await pref.getInt(key) ?? defaultValue;
  }

  @override
  Future<bool> setInt(String key, int value) async {
    final SharedPreferences pref = await _preference;
    return await pref.setInt(key, value);
  }

  @override
  Future<double> getDouble(String key, {double defaultValue = 0.0}) async {
    final SharedPreferences pref = await _preference;
    return await pref.getDouble(key) ?? defaultValue;
  }

  @override
  Future<bool> setDouble(String key, double value) async {
    final SharedPreferences pref = await _preference;
    return await pref.setDouble(key, value);
  }

  @override
  Future<bool> getBool(String key, {bool defaultValue = false}) async {
    final SharedPreferences pref = await _preference;
    return await pref.getBool(key) ?? defaultValue;
  }

  @override
  Future<bool> setBool(String key, bool value) async {
    final SharedPreferences pref = await _preference;
    return await pref.setBool(key, value);
  }

  @override
  Future<List<String>> getStringList(String key,
      {List<String> defaultValue = const []}) async {
    final SharedPreferences pref = await _preference;
    return await pref.getStringList(key) ?? defaultValue;
  }

  @override
  Future<bool> setStringList(String key, List<String> value) async {
    final SharedPreferences pref = await _preference;
    return await pref.setStringList(key, value);
  }

  @override
  Future<bool> remove(String key) async {
    final SharedPreferences pref = await _preference;
    return await pref.remove(key);
  }

  @override
  Future<bool> clear() async {
    final SharedPreferences pref = await _preference;
    return await pref.clear();
  }
}
