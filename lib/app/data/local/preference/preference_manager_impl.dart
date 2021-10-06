import 'package:flutter_getx_template/app/data/local/preference/preference_manager.dart';
import 'package:shared_preferences/shared_preferences.dart';

class PreferenceManagerImpl implements PreferenceManager {
  var _preference = SharedPreferences.getInstance();

  @override
  String getString(String key, {String defValue = ""}) =>
      _getStringFromPreference(key, defValue);

  @override
  void setString(String key, String value) =>
      _setStringToPreference(key, value);

  @override
  int getInt(String key, {int defValue = 0}) => _getIntFromPreference(key);

  @override
  void setInt(String key, int value) => _setIntToPreference(key, value);

  @override
  double getDouble(String key, {double defValue = 0.0}) =>
      _getDoubleFromPreference(key);

  @override
  void setDouble(String key, double value) =>
      _setDoubleToPreference(key, value);

  @override
  bool getBool(String key, {bool defValue = false}) =>
      _getBoolFromPreference(key);

  @override
  void setBool(String key, bool value) => _setBoolToPreference(key, value);

  @override
  List<String> getStringList(String key, {List<String> defValue = const []}) =>
      _getStringListFromPreference(key);

  @override
  void setStringList(String key, List<String> value) =>
      _setStringListToPreference(key, value);

  @override
  bool remove(String key) => _removeFromPreference(key);

  _setStringToPreference(String key, String value) async {
    await _preference.then((SharedPreferences pref) {
      pref.setString(key, value);
    });
  }

  _getStringFromPreference(String key, String defValue) async {
    return await _preference.then((SharedPreferences pref) {
      return pref.getString(key) ?? defValue;
    });
  }

  _setIntToPreference(String key, int value) async {
    await _preference.then((SharedPreferences pref) {
      pref.setInt(key, value);
    });
  }

  _getIntFromPreference(String key, int defValue) async {
    return await _preference.then((SharedPreferences pref) {
      return pref.getInt(key) ?? defValue;
    });
  }

  _setDoubleToPreference(String key, double value) async {
    await _preference.then((SharedPreferences pref) {
      pref.setDouble(key, value);
    });
  }

  _getDoubleFromPreference(String key, double defValue) async {
    return await _preference.then((SharedPreferences pref) {
      return pref.getDouble(key) ?? defValue;
    });
  }

  _setBoolToPreference(String key, bool value) async {
    await _preference.then((SharedPreferences pref) {
      pref.setBool(key, value);
    });
  }

  _getBoolFromPreference(String key, bool defValue) async {
    return await _preference.then((SharedPreferences pref) {
      return pref.getBool(key) ?? defValue;
    });
  }

  _setStringListToPreference(String key, List<String> value) async {
    await _preference.then((SharedPreferences pref) {
      pref.setStringList(key, value);
    });
  }

  _getStringListFromPreference(String key, List<String> defValue) async {
    return await _preference.then((SharedPreferences pref) {
      return pref.getStringList(key) ?? defValue;
    });
  }

  _removeFromPreference(String key) async {
    return await _preference.then((SharedPreferences pref) {
      return pref.remove(key);
    });
  }
}
