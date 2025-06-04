import 'package:shared_preferences/shared_preferences.dart';

class SharedPreferencesService {
  static const String _hasShownWelcomeDialogKey = 'has_shown_welcome_dialog';

  Future<SharedPreferences> _getInstance() async {
    return SharedPreferences.getInstance();
  }

  Future<bool> hasShownWelcomeDialog() async {
    final prefs = await _getInstance();
    return prefs.getBool(_hasShownWelcomeDialogKey) ?? false;
  }

  Future<void> setWelcomeDialogShown(bool value) async {
    final prefs = await _getInstance();
    await prefs.setBool(_hasShownWelcomeDialogKey, value);
  }
}
