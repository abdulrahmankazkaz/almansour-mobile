import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mac_mobile/core/models/basic_models/basic_model/basic_model.dart';

import '../car_brand/car_brand.dart';
import '../image_with_color/image_with_color.dart';

part 'car.freezed.dart';
part 'car.g.dart';

@freezed
class Car with _$Car {
  const factory Car({
    required int id,
    @Default(0) double price,
    @Default(0) int year,
    @Default([]) List<String> images,
    @JsonKey(name: 'car_name') @Default(BasicModel()) BasicModel name,
    @JsonKey(name: 'has_installment') @Default(false) bool hasInstallment,
    @JsonKey(name: 'fuel_economy') @Default('') String fuel,
    @JsonKey(name: 'max_cargo') @Default('') String cargo,
    @JsonKey(name: 'max_avail_hp') @Default('') String availableHip,
    @JsonKey(name: 'seats') @Default('') String seats,
    @JsonKey(name: 'engine') @Default('') String engine,
    @JsonKey(name: 'camera_views') @Default('') String cameras,
    @JsonKey(name: 'catalog_link') @Default('') String catalogLink,
    @JsonKey(name: 'virtual_catalog_link') @Default('') String virtualCatalogLink,
    @JsonKey(name: 'brand') required CarBrand brand,
    @JsonKey(name: 'trim_level') @Default(BasicModel()) BasicModel trimLevel,
    @JsonKey(name: 'primary_image') @Default('') String mainImage,
    @JsonKey(name: 'secondary_images') @Default([]) List<ImageWithColor> secondaryImage,
    @JsonKey(name: 'description') @Default('') String description,
  }) = _Car;

  factory Car.fromJson(Map<String, Object?> json) => _$CarFromJson(json);
}
