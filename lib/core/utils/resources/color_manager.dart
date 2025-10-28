import 'package:flutter/material.dart';

class ColorManager {
  //fixme refactor this class to  use fromHex method
  static const MaterialColor primarySwatch = MaterialColor(
    0xFF2480C2,
    <int, Color>{
      50: Color(0xFFE5F0F8),
      100: Color(0xFFBDD9ED),
      200: Color(0xFF92C0E1),
      300: Color(0xFF66A6D4),
      400: Color(0xFF4593CB),
      500: Color(0xFF2480C2),
      600: Color(0xFF2078BC),
      700: Color(0xFF1B6DB4),
      800: Color(0xFF1663AC),
      900: Color(0xFF0D509F),
    },
  );
  static const primaryColor = Color(0xFF2480C2);
  static const secondaryColor = black;
  static const primaryColorDark = Color(0xFF0A2335);
  static const Color primaryColorLight = Color(0xFFD4E8F7);
  static const Color primaryColorSoft = Color(0xFFE9F4FB);
  static const Color primaryColorLightOpacity =
      Color.fromRGBO(36, 128, 194, 0.23);
  static const Color primaryContainer = Color(0xFFEEEEEE);
  static const Color onPrimaryContainer = Color(0xFFFFFFFF);
  static const Color surface = Color(0xFFFFFFFF);
  static const Color cardColor = Color(0xFFFFFFFF);
  static const Color error = Color(0xFFCE3C3C);
  static const Color errorLight = Color(0xFFE94343);
  //#CE3C3C33
  static const Color errorLightOpacity = Color.fromRGBO(206, 60, 60, 0.2);
  static const Color shadow = whiteGrey;
  static const Color black = Color(0xFF000000);
  static const Color lightBlack = Color(0xFF041B29);
  static const Color darkGrey = Color(0xFF6D6D6D);
  static const Color whiteGrey = Color(0xFFF4F4F4);
  static const Color greyLight = Color(0xFFC4C4C4);
  static const Color softGrey = Color(0xFFB6B7B7);
  static const Color grey = Color(0xFFEEEEEE);
  static const Color scaffoldBackgroundColor =  Color(0xFFF4F4F4);
  static const Color secondaryGreyLight = Color(0xFF939393);
  static const Color secondaryGrey = Color(0xFF6D6D6D);
  static const Color secondaryGreyDark = Color(0xFF464646);
  static const Color grayFontColor = Color(0xFF757b89);
}

extension tes on String {
  Color toColor() {
    return Color(int.parse(replaceAll('#', '0xFF')));
  }
}

extension Hex16Color on Color {
  String toHex16String() {
    return '#${value.toRadixString(16).padLeft(8, '0').toUpperCase()}';
  }

  static Color fromHex(String hexColorString) {
    hexColorString = hexColorString.replaceAll('#', '');
    if (hexColorString.length == 6) {
      hexColorString = "FF$hexColorString"; // 8 char with opacity 100%
    }
    return Color(int.parse(hexColorString, radix: 16));
  }
}
