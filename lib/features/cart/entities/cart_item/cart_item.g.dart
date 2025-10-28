// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cart_item.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CartItemImpl _$$CartItemImplFromJson(Map<String, dynamic> json) =>
    _$CartItemImpl(
      sparePart: SparePart.fromJson(json['spare_part'] as Map<String, dynamic>),
      quantity: (json['quantity'] as num?)?.toInt() ?? -1,
    );

Map<String, dynamic> _$$CartItemImplToJson(_$CartItemImpl instance) =>
    <String, dynamic>{
      'spare_part': instance.sparePart,
      'quantity': instance.quantity,
    };
