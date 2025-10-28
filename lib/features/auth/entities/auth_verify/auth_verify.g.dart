// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth_verify.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AuthVerifyImpl _$$AuthVerifyImplFromJson(Map<String, dynamic> json) =>
    _$AuthVerifyImpl(
      user: json['customer'] == null
          ? null
          : User.fromJson(json['customer'] as Map<String, dynamic>),
      token: json['token'] as String,
    );

Map<String, dynamic> _$$AuthVerifyImplToJson(_$AuthVerifyImpl instance) =>
    <String, dynamic>{
      'customer': instance.user,
      'token': instance.token,
    };
