// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'installment_requirement.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$InstallmentRequirementImpl _$$InstallmentRequirementImplFromJson(
        Map<String, dynamic> json) =>
    _$InstallmentRequirementImpl(
      id: (json['id'] as num).toInt(),
      title: json['title'] as String,
      icon: json['image'] as String?,
      requirements:
          (json['details'] as List<dynamic>).map((e) => e as String).toList(),
      subRequirements: (json['sub_requirement'] as List<dynamic>?)
              ?.map((e) =>
                  InstallmentRequirement.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$InstallmentRequirementImplToJson(
        _$InstallmentRequirementImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'image': instance.icon,
      'details': instance.requirements,
      'sub_requirement': instance.subRequirements,
    };
