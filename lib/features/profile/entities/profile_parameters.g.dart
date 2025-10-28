// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'profile_parameters.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ProfileParameters _$ProfileParametersFromJson(Map<String, dynamic> json) =>
    ProfileParameters(
      firstName: json['first_name'] as String,
      lastName: json['last_name'] as String,
      cityId: (json['city_id'] as num).toInt(),
    );

Map<String, dynamic> _$ProfileParametersToJson(ProfileParameters instance) =>
    <String, dynamic>{
      'first_name': instance.firstName,
      'last_name': instance.lastName,
      'city_id': instance.cityId,
    };
