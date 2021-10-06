import 'package:flutter_getx_template/app/data/local/preference/preference_manager.dart';
import 'package:shared_preferences/shared_preferences.dart';

class PreferenceManagerImpl implements PreferenceManager {
  var _preference = SharedPreferences.getInstance();

  @override
  Future<String> getString(String key, {String defValue = ""}) async {
    final SharedPreferences pref = await _preference;
    return await pref.getString(key) ?? defValue;
  }

  @override
  Future<bool> setString(String key, String value) async {
    final SharedPreferences pref = await _preference;
    return await pref.setString(key, value);
  }

  @override
  Future<int> getInt(String key, {int defValue = 0}) async {
    final SharedPreferences pref = await _preference;
    return await pref.getInt(key) ?? defValue;
  }

  @override
  Future<bool> setInt(String key, int value) async {
    final SharedPreferences pref = await _preference;
    return await pref.setInt(key, value);
  }

  @override
  Future<double> getDouble(String key, {double defValue = 0.0}) async {
    final SharedPreferences pref = await _preference;
    return await pref.getDouble(key) ?? defValue;
  }

  @override
  Future<bool> setDouble(String key, double value) async {
    final SharedPreferences pref = await _preference;
    return await pref.setDouble(key, value);
  }

  @override
  Future<bool> getBool(String key, {bool defValue = false}) async {
    final SharedPreferences pref = await _preference;
    return await pref.getBool(key) ?? defValue;
  }

  @override
  Future<bool> setBool(String key, bool value) async {
    final SharedPreferences pref = await _preference;
    return await pref.setBool(key, value);
  }

  @override
  Future<List<String>> getStringList(String key,
      {List<String> defValue = const []}) async {
    final SharedPreferences pref = await _preference;
    return await pref.getStringList(key) ?? defValue;
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
}
