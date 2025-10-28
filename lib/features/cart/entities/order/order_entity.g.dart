// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$OrderEntityImpl _$$OrderEntityImplFromJson(Map<String, dynamic> json) =>
    _$OrderEntityImpl(
      id: (json['id'] as num).toInt(),
      items: (json['items'] as List<dynamic>)
          .map((e) => CartItem.fromJson(e as Map<String, dynamic>))
          .toList(),
      status: BasicModel.fromJson(json['status'] as Map<String, dynamic>),
      type: BasicModel.fromJson(json['type'] as Map<String, dynamic>),
      paymentMethod: json['payment_method'] == null
          ? null
          : BasicModel.fromJson(json['payment_method'] as Map<String, dynamic>),
      date: DateTime.parse(json['created_at'] as String),
      totals:
          OrderDetailsTotal.fromJson(json['totals'] as Map<String, dynamic>),
      isRated: json['is_rated'] as bool,
      dealership: json['dealership'] as String?,
    );

Map<String, dynamic> _$$OrderEntityImplToJson(_$OrderEntityImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'items': instance.items,
      'status': instance.status,
      'type': instance.type,
      'payment_method': instance.paymentMethod,
      'created_at': instance.date.toIso8601String(),
      'totals': instance.totals,
      'is_rated': instance.isRated,
      'dealership': instance.dealership,
    };
