import 'package:freezed_annotation/freezed_annotation.dart';

part 'DefaultSuccessModel.freezed.dart';
part 'DefaultSuccessModel.g.dart';

@freezed
class DefaultSuccessModel with _$DefaultSuccessModel {
  const factory DefaultSuccessModel({
    @Default('') String message,
    @Default('') String code,
  }) = _DefaultSuccessModel;

  factory DefaultSuccessModel.fromJson(Map<String, dynamic> json) =>
      _$DefaultSuccessModelFromJson(json);
}
