// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_details_parameters.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

OrderDetailsParameters _$OrderDetailsParametersFromJson(
        Map<String, dynamic> json) =>
    OrderDetailsParameters(
      items: (json['items'] as List<dynamic>)
          .map((e) => OrderItem.fromJson(e as Map<String, dynamic>))
          .toList(),
      paymentMethodId: (json['payment_method_id'] as num?)?.toInt(),
      lng: json['longitude'] as String?,
      lat: json['latitude'] as String?,
      orderTypeId: (json['type_id'] as num?)?.toInt(),
      dealershipId: (json['dealership_id'] as num?)?.toInt(),
    );

Map<String, dynamic> _$OrderDetailsParametersToJson(
        OrderDetailsParameters instance) =>
    <String, dynamic>{
      'items': instance.items,
      'longitude': instance.lng,
      'latitude': instance.lat,
      'payment_method_id': instance.paymentMethodId,
      'type_id': instance.orderTypeId,
      'dealership_id': instance.dealershipId,
    };
