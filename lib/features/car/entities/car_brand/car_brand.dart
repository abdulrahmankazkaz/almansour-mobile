import 'package:freezed_annotation/freezed_annotation.dart';

part 'car_brand.freezed.dart';
part 'car_brand.g.dart';

@freezed
class CarBrand with _$CarBrand {
  const factory CarBrand({
    required int id,
    @Default('') String name,
    @Default('') String image,
    @Default('') String link,
    @JsonKey(name: 'button_name') @Default('') String linkTitle,
  }) = _CarBrand;

  factory CarBrand.fromJson(Map<String, Object?> json) =>
      _$CarBrandFromJson(json);
}
