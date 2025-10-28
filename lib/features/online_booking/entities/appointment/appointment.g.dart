// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'appointment.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AppointmentImpl _$$AppointmentImplFromJson(Map<String, dynamic> json) =>
    _$AppointmentImpl(
      id: (json['id'] as num).toInt(),
      date: DateTime.parse(json['appointment_time'] as String),
      orderedDate: DateTime.parse(json['created_at'] as String),
      updatedDate: json['updated_at'] == null
          ? null
          : DateTime.parse(json['updated_at'] as String),
      type: BasicModel.fromJson(json['type'] as Map<String, dynamic>),
      status: BasicModel.fromJson(json['status'] as Map<String, dynamic>),
      isRated: json['is_rated'] as bool,
      paymentMethod: json['payment_method'] == null
          ? null
          : BasicModel.fromJson(json['payment_method'] as Map<String, dynamic>),
      dealership: json['dealership'] == null
          ? const Dealership()
          : Dealership.fromJson(json['dealership'] as Map<String, dynamic>),
      image: json['image'] as String? ?? '',
      totals:
          OrderDetailsTotal.fromJson(json['totals'] as Map<String, dynamic>),
      serviceOffer: json['service_offer'] == null
          ? null
          : ServiceOffer.fromJson(
              json['service_offer'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$AppointmentImplToJson(_$AppointmentImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'appointment_time': instance.date.toIso8601String(),
      'created_at': instance.orderedDate.toIso8601String(),
      'updated_at': instance.updatedDate?.toIso8601String(),
      'type': instance.type,
      'status': instance.status,
      'is_rated': instance.isRated,
      'payment_method': instance.paymentMethod,
      'dealership': instance.dealership,
      'image': instance.image,
      'totals': instance.totals,
      'service_offer': instance.serviceOffer,
    };
