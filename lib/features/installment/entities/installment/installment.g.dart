// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'installment.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$InstallmentImpl _$$InstallmentImplFromJson(Map<String, dynamic> json) =>
    _$InstallmentImpl(
      car: Car.fromJson(json['car'] as Map<String, dynamic>),
      secondaryImage: (json['secondaryImage'] as List<dynamic>)
          .map((e) => ImageWithColor.fromJson(e as Map<String, dynamic>))
          .toList(),
      carName: json['carName'] as String,
      brandImage: json['brandImage'] as String,
      price: (json['price'] as num).toDouble(),
      downPayment: (json['downPayment'] as num?)?.toDouble(),
      restPayPerMonth: (json['restPayPerMonth'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$$InstallmentImplToJson(_$InstallmentImpl instance) =>
    <String, dynamic>{
      'car': instance.car,
      'secondaryImage': instance.secondaryImage,
      'carName': instance.carName,
      'brandImage': instance.brandImage,
      'price': instance.price,
      'downPayment': instance.downPayment,
      'restPayPerMonth': instance.restPayPerMonth,
    };
