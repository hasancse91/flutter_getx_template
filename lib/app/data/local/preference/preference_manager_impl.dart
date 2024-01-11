import 'package:get_storage/get_storage.dart';

import '/app/data/local/preference/preference_manager.dart';

class PreferenceManagerImpl implements PreferenceManager {
  final GetStorage _storage = GetStorage(PreferenceManager.DATABASE_NAME);

  @override
  String getString(String key, {String defaultValue = ""}) =>
      _storage.read(key) ?? defaultValue;

  @override
  void setString(String key, String value) => _storage.write(key, value);

  @override
  int getInt(String key, {int defaultValue = 0}) =>
      _storage.read(key) ?? defaultValue;

  @override
  void setInt(String key, int value) => _storage.write(key, value);

  @override
  double getDouble(String key, {double defaultValue = 0.0}) =>
      _storage.read(key) ?? defaultValue;

  @override
  void setDouble(String key, double value) => _storage.write(key, value);

  @override
  bool getBool(String key, {bool defaultValue = false}) =>
      _storage.read(key) ?? defaultValue;

  @override
  void setBool(String key, bool value) => _storage.write(key, value);

  @override
  List<String> getStringList(String key,
          {List<String> defaultValue = const []}) =>
      _storage.read(key) ?? defaultValue;

  @override
  void setStringList(String key, List<String> value) =>
      _storage.write(key, value);

  @override
  void remove(String key) => _storage.remove(key);

  @override
  void clear() => _storage.erase();
}
