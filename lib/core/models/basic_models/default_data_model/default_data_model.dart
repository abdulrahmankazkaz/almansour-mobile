import 'package:freezed_annotation/freezed_annotation.dart';

part 'default_data_model.freezed.dart';
part 'default_data_model.g.dart';

@Freezed(genericArgumentFactories: true)
class DefaultDataModel<T> with _$DefaultDataModel<T> {
  const factory DefaultDataModel({
    @Default('') String message,
    @Default('') String code,
    required T data,
  }) = _DefaultDataModel;

  factory DefaultDataModel.fromJson(
          Map<String, dynamic> json, T Function(Object? json) fromJsonT) =>
      _$DefaultDataModelFromJson(json, fromJsonT);
}
