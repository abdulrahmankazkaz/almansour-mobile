// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'basic_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BasicModelImpl _$$BasicModelImplFromJson(Map<String, dynamic> json) =>
    _$BasicModelImpl(
      name: json['name'] as String? ?? '',
      id: (json['id'] as num?)?.toInt() ?? -1,
    );

Map<String, dynamic> _$$BasicModelImplToJson(_$BasicModelImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'id': instance.id,
    };
