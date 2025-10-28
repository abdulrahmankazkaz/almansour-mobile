import 'package:freezed_annotation/freezed_annotation.dart';


part 'car_name.freezed.dart';
part 'car_name.g.dart';

@freezed
class CarName with _$CarName {
  const factory CarName({
    @JsonKey(name: 'id') required int id,
    @JsonKey(name: 'name') required String name,
    @JsonKey(name: 'image') @Default('') String imageUrl,
  }) = _CarName;

  factory CarName.fromJson(Map<String, Object?> json) =>
      _$CarNameFromJson(json);
}
