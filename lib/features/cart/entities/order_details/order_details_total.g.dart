// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_details_total.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$OrderDetailsTotalImpl _$$OrderDetailsTotalImplFromJson(
        Map<String, dynamic> json) =>
    _$OrderDetailsTotalImpl(
      total: (json['total_amount'] as num).toDouble(),
      delivery: (json['delivery'] as num?)?.toDouble() ?? 0,
      subtotal: (json['subtotal'] as num).toDouble(),
      discount: (json['total_discount'] as num?)?.toDouble() ?? 0,
      discountPercentage: (json['discount'] as num?)?.toInt() ?? 0,
      tax: (json['tax'] as num?)?.toDouble() ?? 0,
    );

Map<String, dynamic> _$$OrderDetailsTotalImplToJson(
        _$OrderDetailsTotalImpl instance) =>
    <String, dynamic>{
      'total_amount': instance.total,
      'delivery': instance.delivery,
      'subtotal': instance.subtotal,
      'total_discount': instance.discount,
      'discount': instance.discountPercentage,
      'tax': instance.tax,
    };
