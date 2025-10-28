// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'notification_body.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$NotificationBodyImpl _$$NotificationBodyImplFromJson(
        Map<String, dynamic> json) =>
    _$NotificationBodyImpl(
      title: json['title'] as String,
      message: json['body'] as String,
      imageUrl: json['image'] as String?,
      typeId: (json['type_id'] as num?)?.toInt(),
      modelId: (json['model_id'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$NotificationBodyImplToJson(
        _$NotificationBodyImpl instance) =>
    <String, dynamic>{
      'title': instance.title,
      'body': instance.message,
      'image': instance.imageUrl,
      'type_id': instance.typeId,
      'model_id': instance.modelId,
    };
