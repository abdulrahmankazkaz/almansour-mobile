// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'service_offer_item.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ServiceOfferItemImpl _$$ServiceOfferItemImplFromJson(
        Map<String, dynamic> json) =>
    _$ServiceOfferItemImpl(
      id: (json['id'] as num).toInt(),
      description: json['description'] as String? ?? '',
    );

Map<String, dynamic> _$$ServiceOfferItemImplToJson(
        _$ServiceOfferItemImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'description': instance.description,
    };
