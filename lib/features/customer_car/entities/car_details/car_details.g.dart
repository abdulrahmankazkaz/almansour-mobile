// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'car_details.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CarDetailsImpl _$$CarDetailsImplFromJson(Map<String, dynamic> json) =>
    _$CarDetailsImpl(
      brand: CarBrand.fromJson(json['brand'] as Map<String, dynamic>),
      carName: CarName.fromJson(json['car_name'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$CarDetailsImplToJson(_$CarDetailsImpl instance) =>
    <String, dynamic>{
      'brand': instance.brand,
      'car_name': instance.carName,
    };
