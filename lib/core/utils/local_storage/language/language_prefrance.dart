import 'dart:ui';

import 'package:mac_mobile/core/utils/extensions/extensions.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../language/language_manager.dart';

class LanguagePreferences {
  late final SharedPreferences sharedPreferences;

  final String prefsLanguageKey = 'language';

  LanguagePreferences(this.sharedPreferences);

  AppLanguage getAppLanguage()  {
    String? language = sharedPreferences.getString(prefsLanguageKey);
    if (language?.isNotEmpty ?? false) {
      return AppLanguage.values
              .firstWhereOrNull((element) => element.name == language) ??
          AppLanguage.english;
    } else {
      return AppLanguage.english;
    }
  }

  Future<Locale> getLocal() async {
    AppLanguage currentLanguage = getAppLanguage();
    return (AppLanguage.values
                .firstWhereOrNull((element) => element == currentLanguage) ??
            AppLanguage.english)
        .local();
  }

  Future<void> setAppLanguage({required AppLanguage lang}) async {
    AppLanguage currentLanguage = getAppLanguage();
    if (lang == currentLanguage) {
    } else {
      sharedPreferences.setString(prefsLanguageKey, lang.name);
    }
  }
}
