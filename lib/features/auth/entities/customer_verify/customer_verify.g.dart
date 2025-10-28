// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'customer_verify.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CustomerVerifyImpl _$$CustomerVerifyImplFromJson(Map<String, dynamic> json) =>
    _$CustomerVerifyImpl(
      id: (json['id'] as num?)?.toInt(),
      mobileNumber: json['mobile'] as String?,
      status: BasicModel.fromJson(json['status'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$CustomerVerifyImplToJson(
        _$CustomerVerifyImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'mobile': instance.mobileNumber,
      'status': instance.status,
    };
