// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pay_order_parameters.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PayOrderParameters _$PayOrderParametersFromJson(Map<String, dynamic> json) =>
    PayOrderParameters(
      paymentMethodId: (json['payment_method_id'] as num).toInt(),
      orderId: (json['id'] as num).toInt(),
    );

Map<String, dynamic> _$PayOrderParametersToJson(PayOrderParameters instance) =>
    <String, dynamic>{
      'payment_method_id': instance.paymentMethodId,
      'id': instance.orderId,
    };
