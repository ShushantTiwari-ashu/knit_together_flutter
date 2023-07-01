import 'dart:convert';

import 'package:shared_preferences/shared_preferences.dart';

class SharedPrefHelper {
  final SharedPreferences preferences;

  SharedPrefHelper({required this.preferences});

  static const _lastChecked = "last_checked";
  static const _checkInternal = "check_interval";
  static const _data = "data";
  static const _theme = "theme";

  // Interval 600000 means handle cache for 600000 milliseconds or 10 minutes
  Future<bool> storeCache(String key, String json,
      {int? lastChecked, int interval = 600000}) {
    lastChecked ??= DateTime.now().millisecondsSinceEpoch;
    return preferences.setString(
        key,
        jsonEncode({
          _lastChecked: lastChecked,
          _checkInternal: interval,
          _data: json
        }));
  }

  Future<String?> getCache(String key) async {
    Map map = jsonDecode(preferences.getString(key).toString());
    // if outdated, clear and return null
    var lastChecked = map[_lastChecked];
    var interval = map[_checkInternal];
    if ((DateTime.now().millisecondsSinceEpoch - lastChecked) > interval) {
      preferences.remove(key);
      return null;
    }
    return map[_data];
  }

  Future<Map?> getFullCache(String key) async {
    Map map = jsonDecode(preferences.getString(key).toString());
    // if outdated, clear and return null
    var lastChecked = map[_lastChecked];
    var interval = map[_checkInternal];
    if ((DateTime.now().millisecondsSinceEpoch - lastChecked) > interval) {
      preferences.remove(key);
      return null;
    }
    return map;
  }

  Future saveValueDarkTheme(bool value) async {
    preferences.setBool(_theme, value);
  }

  Future<bool> getValueDarkTheme() async {
    return preferences.getBool(_theme) ?? false;
  }
}
