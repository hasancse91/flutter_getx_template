import 'package:flutter_getx_template/app/data/local/preference/preference_manager.dart';
import 'package:shared_preferences/shared_preferences.dart';

class PreferenceManagerImpl implements PreferenceManager {
  var _preference = SharedPreferences.getInstance();

  @override
  String getString(String key) => _getStringFromPreference(key);

  @override
  void setString(String key, String value) =>
      _setStringToPreference(key, value);

  @override
  int getInt(String key) => _getIntFromPreference(key);

  @override
  void setInt(String key, int value) => _setIntToPreference(key, value);

  @override
  double getDouble(String key) => _getDoubleFromPreference(key);

  @override
  void setDouble(String key, double value) =>
      _setDoubleToPreference(key, value);

  @override
  bool getBool(String key) => _getBoolFromPreference(key);

  @override
  void setBool(String key, bool value) => _setBoolToPreference(key, value);

  @override
  List<String> getStringList(String key) => _getStringListFromPreference(key);

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

  _getStringFromPreference(String key) async {
    return await _preference.then((SharedPreferences pref) {
      return pref.getString(key) ?? '';
    });
  }

  _setIntToPreference(String key, int value) async {
    await _preference.then((SharedPreferences pref) {
      pref.setInt(key, value);
    });
  }

  _getIntFromPreference(String key) async {
    return await _preference.then((SharedPreferences pref) {
      return pref.getInt(key) ?? 0;
    });
  }

  _setDoubleToPreference(String key, double value) async {
    await _preference.then((SharedPreferences pref) {
      pref.setDouble(key, value);
    });
  }

  _getDoubleFromPreference(String key) async {
    return await _preference.then((SharedPreferences pref) {
      return pref.getDouble(key) ?? 0.0;
    });
  }

  _setBoolToPreference(String key, bool value) async {
    await _preference.then((SharedPreferences pref) {
      pref.setBool(key, value);
    });
  }

  _getBoolFromPreference(String key) async {
    return await _preference.then((SharedPreferences pref) {
      return pref.getBool(key) ?? false;
    });
  }

  _setStringListToPreference(String key, List<String> value) async {
    await _preference.then((SharedPreferences pref) {
      pref.setStringList(key, value);
    });
  }

  _getStringListFromPreference(String key) async {
    return await _preference.then((SharedPreferences pref) {
      return pref.getStringList(key) ?? [];
    });
  }

  _removeFromPreference(String key) async {
    return await _preference.then((SharedPreferences pref) {
      return pref.remove(key);
    });
  }
}
