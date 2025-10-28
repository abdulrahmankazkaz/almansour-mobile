// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'car_brand.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CarBrandImpl _$$CarBrandImplFromJson(Map<String, dynamic> json) =>
    _$CarBrandImpl(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String? ?? '',
      image: json['image'] as String? ?? '',
      link: json['link'] as String? ?? '',
      linkTitle: json['button_name'] as String? ?? '',
    );

Map<String, dynamic> _$$CarBrandImplToJson(_$CarBrandImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'image': instance.image,
      'link': instance.link,
      'button_name': instance.linkTitle,
    };
