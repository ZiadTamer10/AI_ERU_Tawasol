import 'package:shared_preferences/shared_preferences.dart';

class LocalStorageService {
  Future<void> saveRememberMe(bool value) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setBool('rememberMe', value);
  }

  Future<bool> getRememberMe() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getBool('rememberMe') ?? false;
  }
}
