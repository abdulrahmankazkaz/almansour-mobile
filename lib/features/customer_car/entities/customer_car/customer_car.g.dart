// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'customer_car.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CustomerCarImpl _$$CustomerCarImplFromJson(Map<String, dynamic> json) =>
    _$CustomerCarImpl(
      id: (json['id'] as num).toInt(),
      status: BasicModel.fromJson(json['status'] as Map<String, dynamic>),
      vinNumber: json['vin_number'] as String,
      isFromMac: json['is_from_mac'] as bool,
      rejectReason: json['reject_reason'] as String? ?? '',
      yearOfModel: json['year'] as String,
      odometer: (json['odometer'] as num).toInt(),
      licenseExpired: json['license_expire'] as String? ?? '',
      licenseImage: json['license_image'] as String? ?? '',
      carDetails:
          CarDetails.fromJson(json['car_details'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$CustomerCarImplToJson(_$CustomerCarImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'status': instance.status,
      'vin_number': instance.vinNumber,
      'is_from_mac': instance.isFromMac,
      'reject_reason': instance.rejectReason,
      'year': instance.yearOfModel,
      'odometer': instance.odometer,
      'license_expire': instance.licenseExpired,
      'license_image': instance.licenseImage,
      'car_details': instance.carDetails,
    };
