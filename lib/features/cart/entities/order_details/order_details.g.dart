// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_details.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$OrderDetailsImpl _$$OrderDetailsImplFromJson(Map<String, dynamic> json) =>
    _$OrderDetailsImpl(
      totals:
          OrderDetailsTotal.fromJson(json['totals'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$OrderDetailsImplToJson(_$OrderDetailsImpl instance) =>
    <String, dynamic>{
      'totals': instance.totals,
    };
