import 'dart:ui' as ui;

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:intl/intl.dart' as intl;

import '../resources/theme_manager.dart';


extension IterableExtensions<T> on Iterable<T> {
  T? firstWhereOrNull(bool Function(T element) comparator) {
    try {
      return firstWhere(comparator);
    } on StateError catch (_) {
      return null;
    }
  }
}

extension ListExtensions<T> on List<T> {
  List<T>? whereOrNull(bool Function(T) condition) {
    final filteredList = where((item) => condition(item)).toList();
    return filteredList.isEmpty ? null : filteredList;
  }

  T? firstWhereOrNull(bool Function(T) condition) {
    final filteredList = where((item) => condition(item)).toList();
    return filteredList.isEmpty ? null : filteredList.first;
  }

  T? firstOrNull() {
    return isNotEmpty ? first : null;
  }

  String get showAsString => toString().replaceAll('[', '').replaceAll(']', '');
}

extension ListExtensionsNullable<T> on List<T>? {
  ///IF List is empty or null the function will return null
  List<T>? get checkEmptyList => (this?.isEmpty ?? true) ? null : this;
}

class DoubleInputFormatter extends TextInputFormatter {
  static final RegExp _doubleRegExp = RegExp(r'^(?:[0-9]*)(?:\.[0-9]*)?$');

  @override
  TextEditingValue formatEditUpdate(
    TextEditingValue oldValue,
    TextEditingValue newValue,
  ) {
    if (_doubleRegExp.hasMatch(newValue.text)) {
      return newValue;
    }
    return oldValue;
  }
}

extension ThemeDataValueExtension on ThemeData {
  String getValue() {
    if (isDarkTheme) {
      return ThemeDataType.dark.toString();
    } else {
      return ThemeDataType.light.toString();
    }
  }
}

extension ThemeDataTypeExtension on ThemeData {
  bool get isDarkTheme {
    return brightness == Brightness.dark;
  }
}

class DecoratedInputBorder extends InputBorder {
  DecoratedInputBorder({
    required this.child,
    required this.shadow,
  }) : super(borderSide: child.borderSide);

  final InputBorder child;

  final BoxShadow shadow;

  @override
  bool get isOutline => child.isOutline;

  @override
  Path getInnerPath(Rect rect, {TextDirection? textDirection}) =>
      child.getInnerPath(rect, textDirection: textDirection);

  @override
  Path getOuterPath(Rect rect, {TextDirection? textDirection}) =>
      child.getOuterPath(rect, textDirection: textDirection);

  @override
  EdgeInsetsGeometry get dimensions => child.dimensions;

  @override
  InputBorder copyWith(
      {BorderSide? borderSide,
      InputBorder? child,
      BoxShadow? shadow,
      bool? isOutline}) {
    return DecoratedInputBorder(
      child: (child ?? this.child).copyWith(borderSide: borderSide),
      shadow: shadow ?? this.shadow,
    );
  }

  @override
  ShapeBorder scale(double t) {
    final scalledChild = child.scale(t);

    return DecoratedInputBorder(
      child: scalledChild is InputBorder ? scalledChild : child,
      shadow: BoxShadow.lerp(null, shadow, t)!,
    );
  }

  @override
  void paint(Canvas canvas, Rect rect,
      {double? gapStart,
      double gapExtent = 0.0,
      double gapPercentage = 0.0,
      TextDirection? textDirection}) {
    final clipPath = Path()
      ..addRect(const Rect.fromLTWH(-5000, -5000, 10000, 10000))
      ..addPath(getInnerPath(rect), Offset.zero)
      ..fillType = PathFillType.evenOdd;
    canvas.clipPath(clipPath);

    final Paint paint = shadow.toPaint();
    final Rect bounds = rect.shift(shadow.offset).inflate(shadow.spreadRadius);

    canvas.drawPath(getOuterPath(bounds), paint);

    child.paint(canvas, rect,
        gapStart: gapStart,
        gapExtent: gapExtent,
        gapPercentage: gapPercentage,
        textDirection: textDirection);
  }

  @override
  bool operator ==(Object other) {
    if (other.runtimeType != runtimeType) return false;
    return other is DecoratedInputBorder &&
        other.borderSide == borderSide &&
        other.child == child &&
        other.shadow == shadow;
  }

  // @override
  // int get hashCode => hashValues(borderSide, child, shadow);

  @override
  String toString() {
    return '${objectRuntimeType(this, 'DecoratedInputBorder')}($borderSide, $shadow, $child)';
  }
}

extension MaxExtension on double {
  double maxPositive() => this > 0 ? this : 0;
}

extension StringExtinssion on String? {
  String get last10Characters {
    String text = this ?? '';
    String last10Characters =
        text.length >= 10 ? "${text.substring(text.length - 10)}..." : text;
    return last10Characters;
  }

  int get toHexColor {
    final buffer = StringBuffer();
    buffer.write('0XFF$this');
    return int.parse(buffer.toString());
  }

  isEmptyNullable(String? value) =>
      (value?.trim().isEmpty ?? true) ? true : false;

  ui.TextDirection get direction {
    bool lanDirection = intl.Bidi.detectRtlDirectionality(this ?? '');
    if (lanDirection) {
      return ui.TextDirection.rtl;
    } else {
      return ui.TextDirection.ltr;
    }
  }
}


extension IntExtensionint on int {
  int max() => this > 0 ? this : 0;

  String maxNumberLength(int number, int maxValue) {
    if (number > maxValue) {
      return '+$maxValue';
    } else {
      return '$number';
    }
  }

  String fixNumberToString(int number, celCount) {
    if (number.toString().length >= celCount) {
      return number.toString();
    } else {
      String textNumber =
          (List.generate(celCount - number.toString().length, (index) => '0')
                      .showAsString)
                  .replaceAll(',', '')
                  .replaceAll(' ', '') +
              number.toString();
      return textNumber.trim();
    }
  }
}

class IntComparable implements Comparable<IntComparable> {
  int value;

  IntComparable(this.value);

  @override
  int compareTo(IntComparable other) {
    return value.compareTo(other.value);
  }
}
