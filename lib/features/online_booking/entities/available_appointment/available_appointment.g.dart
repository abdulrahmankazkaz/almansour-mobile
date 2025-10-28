// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'available_appointment.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AvailableAppointmentImpl _$$AvailableAppointmentImplFromJson(
        Map<String, dynamic> json) =>
    _$AvailableAppointmentImpl(
      date: DateTime.parse(json['date'] as String),
      isAvailable: json['is_available'] as bool,
    );

Map<String, dynamic> _$$AvailableAppointmentImplToJson(
        _$AvailableAppointmentImpl instance) =>
    <String, dynamic>{
      'date': instance.date.toIso8601String(),
      'is_available': instance.isAvailable,
    };
