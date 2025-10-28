import 'package:shared_preferences/shared_preferences.dart';

import 'language/language_prefrance.dart';
import 'theme/theme_prefrance.dart';
import 'user/user_preferance.dart';


class AppPreferences {
  late final SharedPreferences sharedPreferences;
  late final LanguagePreferences _languagePreferences;
  late final ThemePreferences _themePreferences;
  late final UserPreferences _userPreferences;

  LanguagePreferences get languagePreferences => _languagePreferences;

  ThemePreferences get themePreferences => _themePreferences;

  UserPreferences get userPreferences => _userPreferences;

  AppPreferences(this.sharedPreferences) {
    _languagePreferences = LanguagePreferences(sharedPreferences);
    _themePreferences = ThemePreferences(sharedPreferences);
    _userPreferences = UserPreferences(sharedPreferences);
  }
}
