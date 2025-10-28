import 'package:freezed_annotation/freezed_annotation.dart';

part 'color_entity.freezed.dart';
part 'color_entity.g.dart';

@freezed
class ColorEntity with _$ColorEntity {
  const factory ColorEntity({
    required int id,
    @Default('') String name,
    @JsonKey(name: 'hex') @Default('') String color,
  }) = _ColorEntity;

  factory ColorEntity.fromJson(Map<String, Object?> json) =>
      _$ColorEntityFromJson(json);


}
