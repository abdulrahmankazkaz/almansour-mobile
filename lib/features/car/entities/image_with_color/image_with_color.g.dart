// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'image_with_color.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ImageWithColorImpl _$$ImageWithColorImplFromJson(Map<String, dynamic> json) =>
    _$ImageWithColorImpl(
      id: (json['id'] as num).toInt(),
      image: json['image'] as String? ?? '',
      color: json['color'] == null
          ? const ColorEntity(id: -1)
          : ColorEntity.fromJson(json['color'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$ImageWithColorImplToJson(
        _$ImageWithColorImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'image': instance.image,
      'color': instance.color,
    };
