import 'package:easy_localization/easy_localization.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../generated/locale_keys.g.dart';

part 'failure.freezed.dart';
part 'failure.g.dart';

@freezed
class FailureModel with _$FailureModel {
  const factory FailureModel({
    @Default('') String message,
    @Default('') String code,
  }) = _FailureModel;

  factory FailureModel.fromJson(Map<String, dynamic>? json) =>
      _$FailureModelFromJson(json ?? {});
}


Map<String, String> serverError = {
  'message': LocaleKeys.dioError_serverError.tr()
};

Map<String, String> defaultError = {
  'message': LocaleKeys.messages_errorMessage.tr()
};
