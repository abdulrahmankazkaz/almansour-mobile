import 'package:easy_localization/easy_localization.dart';

import '../../../generated/locale_keys.g.dart';

class Validator {
  static const String passwordRegex =
      r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?\d)(?=.*?[#.?!@$%^&*-]).{8,}$';
  static const String codeRegex = r'^[A-Za-z]{3}[0-9]{5}$';
  static const String emailRegex = r'^[\w\.-]+@[\w\.-]+\.\w+$';
  static const String phoneRegex = r'^(78|75|76|77|79)\d{8}$';
  static const String vinRegex = r'^[A-Z\d]{6}[A-Z][A-Z\d]{4}\d{6}$';
  static const String digitRegex = r'^[0-9]+$';
  static const String sixDigitRegex = r'^[0-9]{6}$';


  static  String requiredField = LocaleKeys.validator_requiredField.tr();

  static String? validateRequiredField(String? value) =>
      (value?.trim().isEmpty ?? true) ? requiredField : null;

  static String? validateRequiredList(List? value) =>
      (value?.isEmpty ?? true) ? requiredField : null;

  static String? validateRequiredRegionNumber(
          {String? value, required int max, int? min}) =>
      (value?.trim().isEmpty ?? true)
          ? requiredField
          : (int.tryParse(value ?? '') ?? 0) > max
              ? 'Maximum Value is $max'
              : (int.tryParse(value ?? '') ?? 0) <
                      (min ?? (int.tryParse(value ?? '0') ?? 0))
                  ? 'Minimum Value is $min'
                  : null;

  static String? validateRequiredMinimumNumber({String? value, int? min}) =>
      (value?.trim().isEmpty ?? true)
          ? requiredField
          : (int.tryParse(value ?? '') ?? 0) <
                  (min ?? (int.tryParse(value ?? '0') ?? 0))
              ? 'Minimum Value is $min'
              : null;

  static String? validateRequiredObjectByID(int? id) =>
      ((id ?? -1) < 0) ? requiredField : null;

  static String? validateTextEql(String? value, String value2) =>
      (value == null || value.isEmpty)
          ? requiredField
          : (value == value2)
              ? 'please enter new value'
              : null;

  static String? userPasswordValidation(String? value) {
    String empty = validateRequiredField(value) ?? '';
    if (empty.isNotEmpty) {
      return empty;
    }
    final regExp = RegExp(passwordRegex);
    return regExp.hasMatch((value ?? '').trim()) ? null : 'Wrong password';
  }

  static String? emailValidation(String? value) {
    String empty = validateRequiredField(value) ?? '';
    if (empty.isNotEmpty) {
      return empty;
    }
    final regExp = RegExp(emailRegex);
    return regExp.hasMatch((value ?? '').trim()) ? null : LocaleKeys.validator_wrongEmail.tr();
  }

  static String? vinValidation(String? value) {
    String empty = validateRequiredField(value) ?? '';
    if (empty.isNotEmpty) {
      return empty;
    }
    final regExp = RegExp(vinRegex);
    return regExp.hasMatch((value ?? '').trim()) ? null : LocaleKeys.validator_wrongVINNumber.tr();
  }

  static String? phoneValidation(String? value) {
    String empty = validateRequiredField(value) ?? '';
    if (empty.isNotEmpty) {
      return empty;
    }
    final regExp = RegExp(phoneRegex);
    return regExp.hasMatch((value ?? '').trim()) ? null : LocaleKeys.validator_wrongPhone.tr();
  }

  static String? nameValidation(String? value) {
    String empty = validateRequiredField(value) ?? '';
    if (empty.isNotEmpty) {
      return empty;
    }
    return (value?.trim().length ?? 0) >= 3 ? null : LocaleKeys.validator_nameValidation.tr();
  }

  static String? digitsOnlyValidation(String? value) {
    String empty = validateRequiredField(value) ?? '';
    if (empty.isNotEmpty) {
      return empty;
    }
    final regExp = RegExp(digitRegex);
    return regExp.hasMatch(value ?? '') ? null : LocaleKeys.validator_digitValidation.tr();
  }
  static String? sixDigitsOnlyValidation(String? value) {
    String empty = validateRequiredField(value) ?? '';
    if (empty.isNotEmpty) {
      return empty;
    }
    final regExp = RegExp(sixDigitRegex);
    return regExp.hasMatch(value ?? '') ? null : LocaleKeys.auth_verificationCodeValidate.tr();
  }

  static String? duplicatedValueRequired({List? list, String? value}) {
    String empty = validateRequiredField(value) ?? '';
    if (empty.isNotEmpty) {
      return empty;
    }
    return ((list ?? [])
                .where(
                  (element) => element == value,
                )
                .toList()
                .length >
            1)
        ? 'Duplicated'
        : null;
  }

  static String? duplicatedValueLisBeforAddtRequired(
      {List? list, String? value}) {
    String empty = validateRequiredField(value) ?? '';
    if (empty.isNotEmpty) {
      return empty;
    }
    return ((list ?? [])
            .where(
              (element) => element == value,
            )
            .toList()
            .isNotEmpty)
        ? 'Duplicated'
        : null;
  }

  static String? duplicatedValue({List? list, String? value}) {
    return ((list ?? [])
                .where(
                  (element) => element == value,
                )
                .toList()
                .length >
            1)
        ? 'Duplicated'
        : null;
  }

  static String? emailDuplicatedValue({List? list, String? value}) {
    String emailValid = emailValidation(value) ?? '';
    if (emailValid.isNotEmpty) {
      return emailValid;
    }
    return ((list ?? [])
                .where(
                  (element) => element == value,
                )
                .toList()
                .length >
            1)
        ? 'Duplicated'
        : null;
  }

  static String? userCodeValidation(String? value) {
    String empty = validateRequiredField(value) ?? '';
    if (empty.isNotEmpty) {
      return empty;
    }
    final regExp = RegExp(codeRegex);
    return regExp.hasMatch((value ?? '').trim()) ? null : 'Wrong code';
  }

  static String? validateDropdownValue(dynamic value) {
    if (value == null) {
      return requiredField;
    }
    else {
      return null;
    }
  }
}
