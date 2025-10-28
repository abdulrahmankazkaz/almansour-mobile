// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'spare_part.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SparePartImpl _$$SparePartImplFromJson(Map<String, dynamic> json) =>
    _$SparePartImpl(
      id: (json['id'] as num?)?.toInt(),
      name: json['name'] as String?,
      price: (json['price'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$$SparePartImplToJson(_$SparePartImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'price': instance.price,
    };
