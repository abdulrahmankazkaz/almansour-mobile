// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'service_center.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ServiceCenterImpl _$$ServiceCenterImplFromJson(Map<String, dynamic> json) =>
    _$ServiceCenterImpl(
      id: (json['id'] as num?)?.toInt() ?? -1,
      name: json['name'] as String?,
      lng: json['longitude'] as String?,
      lat: json['latitude'] as String?,
    );

Map<String, dynamic> _$$ServiceCenterImplToJson(_$ServiceCenterImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'longitude': instance.lng,
      'latitude': instance.lat,
    };
