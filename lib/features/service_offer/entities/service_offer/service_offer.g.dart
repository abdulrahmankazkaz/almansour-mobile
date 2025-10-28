// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'service_offer.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ServiceOfferImpl _$$ServiceOfferImplFromJson(Map<String, dynamic> json) =>
    _$ServiceOfferImpl(
      id: (json['id'] as num).toInt(),
      title: json['title'] as String? ?? '',
      odometer: (json['odometer'] as num?)?.toInt() ?? 0,
      price: (json['price'] as num?)?.toDouble() ?? 0,
      items: (json['items'] as List<dynamic>?)
              ?.map((e) => ServiceOfferItem.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      year: json['year'] as String? ?? '',
    );

Map<String, dynamic> _$$ServiceOfferImplToJson(_$ServiceOfferImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'odometer': instance.odometer,
      'price': instance.price,
      'items': instance.items,
      'year': instance.year,
    };
