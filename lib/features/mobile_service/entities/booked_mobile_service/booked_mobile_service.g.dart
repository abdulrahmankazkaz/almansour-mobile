// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'booked_mobile_service.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BookedMobileServiceImpl _$$BookedMobileServiceImplFromJson(
        Map<String, dynamic> json) =>
    _$BookedMobileServiceImpl(
      id: (json['id'] as num).toInt(),
      appointmentDate: json['appointment_time'] == null
          ? null
          : DateTime.parse(json['appointment_time'] as String),
      bookDate: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      street: BasicModel.fromJson(json['street'] as Map<String, dynamic>),
      area: BasicModel.fromJson(json['area'] as Map<String, dynamic>),
      city: BasicModel.fromJson(json['city'] as Map<String, dynamic>),
      status: BasicModel.fromJson(json['status'] as Map<String, dynamic>),
      type: BasicModel.fromJson(json['type'] as Map<String, dynamic>),
      isRated: json['is_rated'] as bool,
    );

Map<String, dynamic> _$$BookedMobileServiceImplToJson(
        _$BookedMobileServiceImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'appointment_time': instance.appointmentDate?.toIso8601String(),
      'created_at': instance.bookDate?.toIso8601String(),
      'street': instance.street,
      'area': instance.area,
      'city': instance.city,
      'status': instance.status,
      'type': instance.type,
      'is_rated': instance.isRated,
    };
