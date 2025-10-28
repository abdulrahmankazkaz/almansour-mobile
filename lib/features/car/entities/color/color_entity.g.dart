// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'color_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ColorEntityImpl _$$ColorEntityImplFromJson(Map<String, dynamic> json) =>
    _$ColorEntityImpl(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String? ?? '',
      color: json['hex'] as String? ?? '',
    );

Map<String, dynamic> _$$ColorEntityImplToJson(_$ColorEntityImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'hex': instance.color,
    };
