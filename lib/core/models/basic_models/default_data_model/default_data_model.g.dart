// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'default_data_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DefaultDataModelImpl<T> _$$DefaultDataModelImplFromJson<T>(
  Map<String, dynamic> json,
  T Function(Object? json) fromJsonT,
) =>
    _$DefaultDataModelImpl<T>(
      message: json['message'] as String? ?? '',
      code: json['code'] as String? ?? '',
      data: fromJsonT(json['data']),
    );

Map<String, dynamic> _$$DefaultDataModelImplToJson<T>(
  _$DefaultDataModelImpl<T> instance,
  Object? Function(T value) toJsonT,
) =>
    <String, dynamic>{
      'message': instance.message,
      'code': instance.code,
      'data': toJsonT(instance.data),
    };
