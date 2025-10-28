import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mac_mobile/core/models/basic_models/basic_model/basic_model.dart';
import 'package:mac_mobile/features/customer_car/entities/car_details/car_details.dart';

part 'customer_car.freezed.dart';
part 'customer_car.g.dart';

@freezed
class CustomerCar with _$CustomerCar {
  const factory CustomerCar({
    required int id,
    required BasicModel status,
    @JsonKey(name: 'vin_number') required String vinNumber,
    @JsonKey(name: 'is_from_mac') required bool isFromMac,
    @JsonKey(name: 'reject_reason') @Default('') String rejectReason,
    @JsonKey(name: 'year') required String yearOfModel,
    @JsonKey(name: 'odometer') required int odometer,
    @JsonKey(name: 'license_expire') @Default('') String licenseExpired,
    @JsonKey(name: 'license_image') @Default('') String licenseImage,
    @JsonKey(name: 'car_details') required CarDetails carDetails,

  }) = _CustomerCar;

  factory CustomerCar.fromJson(Map<String, Object?> json) =>
      _$CustomerCarFromJson(json);
}
