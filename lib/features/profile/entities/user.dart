import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mac_mobile/features/customer_car/entities/customer_car/customer_car.dart';

import '../../../core/models/basic_models/basic_model/basic_model.dart';

part 'user.freezed.dart';
part 'user.g.dart';

@freezed
class User with _$User {
  const User._();
  const factory User({
    @Default(-1) int id,
    @JsonKey(name: 'first_name') String? firstName,
    @JsonKey(name: 'last_name') String? lastName,
    @JsonKey(name: 'mobile') String? mobileNumber,
    @JsonKey(name: 'status') BasicModel? userStatus,
    BasicModel? city,
    @JsonKey(name: 'customer_car') CustomerCar? customerCar,
  }) = _User;
  String get fullName => '$firstName $lastName';
  factory User.fromJson(Map<String, Object?> json) => _$UserFromJson(json);
}
