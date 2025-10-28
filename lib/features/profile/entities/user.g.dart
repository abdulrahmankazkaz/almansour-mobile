// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserImpl _$$UserImplFromJson(Map<String, dynamic> json) => _$UserImpl(
      id: (json['id'] as num?)?.toInt() ?? -1,
      firstName: json['first_name'] as String?,
      lastName: json['last_name'] as String?,
      mobileNumber: json['mobile'] as String?,
      userStatus: json['status'] == null
          ? null
          : BasicModel.fromJson(json['status'] as Map<String, dynamic>),
      city: json['city'] == null
          ? null
          : BasicModel.fromJson(json['city'] as Map<String, dynamic>),
      customerCar: json['customer_car'] == null
          ? null
          : CustomerCar.fromJson(json['customer_car'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$UserImplToJson(_$UserImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'first_name': instance.firstName,
      'last_name': instance.lastName,
      'mobile': instance.mobileNumber,
      'status': instance.userStatus,
      'city': instance.city,
      'customer_car': instance.customerCar,
    };
