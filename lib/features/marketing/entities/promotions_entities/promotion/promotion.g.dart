// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'promotion.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PromotionImpl _$$PromotionImplFromJson(Map<String, dynamic> json) =>
    _$PromotionImpl(
      id: (json['id'] as num).toInt(),
      expiryDate: json['expire_date'] as String? ?? '',
      title: json['title'] as String? ?? '',
      description: json['description'] as String? ?? '',
      media: Media.fromJson(json['media'] as Map<String, dynamic>),
      showedInBanner: json['show_in_banner'] as bool? ?? false,
      popup: json['popup'] == null
          ? null
          : PopUpEntity.fromJson(json['popup'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$PromotionImplToJson(_$PromotionImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'expire_date': instance.expiryDate,
      'title': instance.title,
      'description': instance.description,
      'media': instance.media,
      'show_in_banner': instance.showedInBanner,
      'popup': instance.popup,
    };
