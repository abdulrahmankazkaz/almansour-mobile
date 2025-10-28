// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'media.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MediaImpl _$$MediaImplFromJson(Map<String, dynamic> json) => _$MediaImpl(
      primaryImage: (json['primary'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
      videos:
          (json['video'] as List<dynamic>?)?.map((e) => e as String).toList() ??
              const [],
      images: (json['images'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
      bannerImage: json['banner'] as String?,
    );

Map<String, dynamic> _$$MediaImplToJson(_$MediaImpl instance) =>
    <String, dynamic>{
      'primary': instance.primaryImage,
      'video': instance.videos,
      'images': instance.images,
      'banner': instance.bannerImage,
    };
