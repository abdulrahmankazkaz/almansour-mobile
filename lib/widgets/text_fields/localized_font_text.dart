import 'package:flutter/material.dart';

import '../../core/utils/resources/theme_manager.dart';

class LocalizedFontText extends StatelessWidget {
  final String text;
  final TextStyle? style;
  final TextAlign? textAlign;
  final int? maxLines;
  final TextOverflow? overflow;

  const LocalizedFontText(
      this.text, {
        super.key,
        this.style,
        this.textAlign,
        this.maxLines,
        this.overflow
      });

  bool _isArabic(String text) {
    final arabicRegex = RegExp(r'[\u0600-\u06FF]');
    return arabicRegex.hasMatch(text);
  }

  @override
  Widget build(BuildContext context) {
    final isArabic = _isArabic(text);

    return Text(
      text,
      overflow: overflow,
      style: style?.copyWith(
        fontFamily: isArabic ? FontConstants.almaraiFontFamily : FontConstants.ibmPlexSansFontFamily,
      ),
      textAlign: textAlign,
      maxLines: maxLines,
    );
  }
}
