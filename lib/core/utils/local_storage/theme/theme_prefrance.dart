import 'package:flutter/material.dart';
import 'package:mac_mobile/core/models/basic_models/basic_model/basic_model.dart';
import 'package:mac_mobile/core/utils/extensions/extensions.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../resources/theme_manager.dart';

class ThemePreferences {
  late final SharedPreferences sharedPreferences;

  ThemePreferences(this.sharedPreferences);

  String prefsThemeKey = 'theme';

  setTheme({required ThemeData themeData}) async {
    await sharedPreferences.setString(prefsThemeKey, themeData.getValue());
  }

  BasicModel getTheme() {
    String? theme = sharedPreferences.getString(prefsThemeKey);
    if (theme == ThemeDataType.dark.toString()) {
      return const BasicModel(id: 1,name: 'Dark');
    } else {
      return const BasicModel(id: 2,name: 'Light');
    }
  }
  ThemeMode getThemeMode() {
    String? theme = sharedPreferences.getString(prefsThemeKey);
    if (theme == ThemeDataType.dark.toString()) {
      return ThemeMode.dark;
    } else {
      return ThemeMode.light;
    }
  }
}
