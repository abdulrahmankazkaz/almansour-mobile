import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mac_mobile/core/models/basic_models/basic_model/basic_model.dart';
import 'package:mac_mobile/features/customer_car/entities/car_name/car_name.dart';

import '../../../car/entities/car_brand/car_brand.dart';

part 'car_details.freezed.dart';
part 'car_details.g.dart';

@freezed
class CarDetails with _$CarDetails {
  const factory CarDetails({
    required CarBrand brand,
    @JsonKey(name: 'car_name') required CarName carName,
  }) = _CarDetails;

  factory CarDetails.fromJson(Map<String, Object?> json) =>
      _$CarDetailsFromJson(json);
}
