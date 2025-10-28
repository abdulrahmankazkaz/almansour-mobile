// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'appointment_payment.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AppointmentPaymentImpl _$$AppointmentPaymentImplFromJson(
        Map<String, dynamic> json) =>
    _$AppointmentPaymentImpl(
      url: json['url'] as String?,
      paymentTotals:
          OrderDetailsTotal.fromJson(json['totals'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$AppointmentPaymentImplToJson(
        _$AppointmentPaymentImpl instance) =>
    <String, dynamic>{
      'url': instance.url,
      'totals': instance.paymentTotals,
    };
