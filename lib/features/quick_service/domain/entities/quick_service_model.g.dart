// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'quick_service_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$QuickServiceModelImpl _$$QuickServiceModelImplFromJson(
        Map<String, dynamic> json) =>
    _$QuickServiceModelImpl(
      id: (json['id'] as num).toInt(),
      appointmentDate: json['appointment_time'] == null
          ? null
          : DateTime.parse(json['appointment_time'] as String),
      bookDate: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      dealership:
          BasicModel.fromJson(json['dealership'] as Map<String, dynamic>),
      status: BasicModel.fromJson(json['status'] as Map<String, dynamic>),
      type: BasicModel.fromJson(json['type'] as Map<String, dynamic>),
      isRated: json['is_rated'] as bool,
    );

Map<String, dynamic> _$$QuickServiceModelImplToJson(
        _$QuickServiceModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'appointment_time': instance.appointmentDate?.toIso8601String(),
      'created_at': instance.bookDate?.toIso8601String(),
      'dealership': instance.dealership,
      'status': instance.status,
      'type': instance.type,
      'is_rated': instance.isRated,
    };
