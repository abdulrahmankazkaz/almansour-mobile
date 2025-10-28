// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'car_name.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CarNameImpl _$$CarNameImplFromJson(Map<String, dynamic> json) =>
    _$CarNameImpl(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      imageUrl: json['image'] as String? ?? '',
    );

Map<String, dynamic> _$$CarNameImplToJson(_$CarNameImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'image': instance.imageUrl,
    };
