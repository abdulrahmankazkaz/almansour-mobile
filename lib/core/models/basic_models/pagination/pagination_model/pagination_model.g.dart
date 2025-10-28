// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pagination_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PaginationModelImpl _$$PaginationModelImplFromJson(
        Map<String, dynamic> json) =>
    _$PaginationModelImpl(
      count: (json['count'] as num?)?.toInt() ?? 0,
      from: (json['from'] as num?)?.toInt() ?? 0,
      to: (json['to'] as num?)?.toInt() ?? 0,
      lastPage: (json['last_page'] as num?)?.toInt() ?? 0,
      perPage: (json['per_page'] as num?)?.toInt() ?? 0,
      currentPage: (json['current_page'] as num?)?.toInt() ?? 0,
      total: (json['total'] as num?)?.toInt() ?? 0,
      nextPageUrl: json['next_page_url'] as String?,
      prevPageUrl: json['previous_page_url'] as String? ?? '',
    );

Map<String, dynamic> _$$PaginationModelImplToJson(
        _$PaginationModelImpl instance) =>
    <String, dynamic>{
      'count': instance.count,
      'from': instance.from,
      'to': instance.to,
      'last_page': instance.lastPage,
      'per_page': instance.perPage,
      'current_page': instance.currentPage,
      'total': instance.total,
      'next_page_url': instance.nextPageUrl,
      'previous_page_url': instance.prevPageUrl,
    };
