import 'package:shared_preferences/shared_preferences.dart';

class LocalManager {
  static LocalManager _instance = LocalManager._init();

  SharedPreferences _preferences;
  static LocalManager get instance => _instance;
  LocalManager._init() {
    SharedPreferences.getInstance().then((value) => _preferences = value);
  }
}
