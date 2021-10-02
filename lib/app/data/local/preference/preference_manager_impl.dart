import 'package:flutter_getx_template/app/data/local/preference/preference_manager.dart';
import 'package:shared_preferences/shared_preferences.dart';

class PreferenceManagerImpl implements PreferenceManager {
  var _preference = SharedPreferences.getInstance();
  @override
  String getString(String key) {
    return _getStringFromPreference(key);
  }

  @override
  void setString(String key, String value) {
    _setStringToPreference(key, value);
  }

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
}
