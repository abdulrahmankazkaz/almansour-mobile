import 'package:freezed_annotation/freezed_annotation.dart';

part 'basic_model.freezed.dart';
part 'basic_model.g.dart';

@freezed
class BasicModel with _$BasicModel {
  const BasicModel._();

  const factory BasicModel({@Default('') String name, @Default(-1) int id}) =
      _BasicModel;

  factory BasicModel.fromJson(Map<String, dynamic> json) =>
      _$BasicModelFromJson(json);

  static toJsonId(BasicModel? value) {
    return value?.id;
  }

  static toJsonIdFromList(List<BasicModel>? value) {
    return value?.map((e) => {'id': e.id}).toList();
  }

  static List<int>? toIdFromList(List<BasicModel>? value) {
    return value?.map((e) => e.id).toList();
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is _$BasicModelImpl &&
            (identical(other.id, id) || other.id == id));
  }

  static checkJson(value) {
    return value is String
        ? BasicModel(name: value)
        : BasicModel.fromJson(value);
  }
}
