// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dealership.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DealershipImpl _$$DealershipImplFromJson(Map<String, dynamic> json) =>
    _$DealershipImpl(
      id: (json['id'] as num?)?.toInt() ?? -1,
      name: json['name'] as String?,
      type: json['type'] == null
          ? null
          : BasicModel.fromJson(json['type'] as Map<String, dynamic>),
      image: json['image'] as String?,
      lng: json['longitude'] as String?,
      lat: json['latitude'] as String?,
    );

Map<String, dynamic> _$$DealershipImplToJson(_$DealershipImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'type': instance.type,
      'image': instance.image,
      'longitude': instance.lng,
      'latitude': instance.lat,
    };
