// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'config_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ConfigEntityImpl _$$ConfigEntityImplFromJson(Map<String, dynamic> json) =>
    _$ConfigEntityImpl(
      phone: json['phone_number'] as String,
      email: json['email'] as String,
      currency:
          CurrencyEntity.fromJson(json['currency'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$ConfigEntityImplToJson(_$ConfigEntityImpl instance) =>
    <String, dynamic>{
      'phone_number': instance.phone,
      'email': instance.email,
      'currency': instance.currency,
    };
