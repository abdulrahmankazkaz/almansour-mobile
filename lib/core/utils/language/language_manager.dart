import 'dart:ui';

enum AppLanguage {
  arabic,
  english;

  Locale local() {
    switch (this) {
      case AppLanguage.english:
        return const Locale("en");
      case AppLanguage.arabic:
        return const Locale("ar");
    }
  }

  String get text {
    switch (this) {
      case AppLanguage.english:
        return 'English';
      case AppLanguage.arabic:
        return 'عربي';
    }
  }
  String get code {
    switch (this) {
      case AppLanguage.english:
        return 'en';
      case AppLanguage.arabic:
        return 'ar';
    }
  }

  static Locale get fallbackLocale => AppLanguage.english.local();

  static List<Locale> get supportedLocales =>
      AppLanguage.values.map((e) => e.local()).toList();
}
