import 'package:json_annotation/json_annotation.dart';

part 'profile_parameters.g.dart';

@JsonSerializable()
class ProfileParameters {
  @JsonKey(name: 'first_name')
  String firstName;
  @JsonKey(name: 'last_name')
  String lastName;
  @JsonKey(name: 'city_id')
  int cityId;

  ProfileParameters(
      {required this.firstName,
      required this.lastName,
      required this.cityId});

  Map<String, dynamic> toJson() => _$ProfileParametersToJson(this);
}
