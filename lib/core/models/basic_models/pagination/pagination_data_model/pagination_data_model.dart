import 'package:freezed_annotation/freezed_annotation.dart';

import '../pagination_model/pagination_model.dart';

part 'pagination_data_model.freezed.dart';
part 'pagination_data_model.g.dart';

@Freezed(genericArgumentFactories: true)
class PaginationDataModel<T> with _$PaginationDataModel<T> {
  const factory PaginationDataModel({
    PaginationModel? pagination,
    required List<T> data,
  }) = _PaginationModel;

  factory PaginationDataModel.fromJson(
          Map<String, dynamic> json, T Function(Object? json) fromJsonT) =>
      _$PaginationDataModelFromJson(json, fromJsonT);
}
