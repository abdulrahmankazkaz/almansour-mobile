// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_parameters.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

OrderParameters _$OrderParametersFromJson(Map<String, dynamic> json) =>
    OrderParameters(
      items: (json['items'] as List<dynamic>?)
          ?.map((e) => OrderItem.fromJson(e as Map<String, dynamic>))
          .toList(),
      paymentMethodId: (json['payment_method_id'] as num).toInt(),
      orderTypeId: (json['type_id'] as num?)?.toInt(),
      dealershipId: (json['dealership_id'] as num?)?.toInt(),
      long: json['longitude'] as String?,
      lat: json['latitude'] as String?,
      note: json['note'] as String?,
    );

Map<String, dynamic> _$OrderParametersToJson(OrderParameters instance) =>
    <String, dynamic>{
      'items': instance.items,
      'longitude': instance.long,
      'latitude': instance.lat,
      'payment_method_id': instance.paymentMethodId,
      'type_id': instance.orderTypeId,
      'dealership_id': instance.dealershipId,
      'note': instance.note,
    };
