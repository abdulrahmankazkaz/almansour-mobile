import 'package:freezed_annotation/freezed_annotation.dart';

part 'pagination_model.freezed.dart';
part 'pagination_model.g.dart';

@freezed
class PaginationModel with _$PaginationModel {
  const factory PaginationModel({
    @Default(0) int count,
    @Default(0) int from,
    @Default(0) int to,
    @Default(0) @JsonKey(name: 'last_page') int lastPage,
    @Default(0) @JsonKey(name: 'per_page') int perPage,
    @Default(0) @JsonKey(name: 'current_page') int currentPage,
    @Default(0) @JsonKey(name: 'total') int total,
    @JsonKey(name: 'next_page_url') String? nextPageUrl,
    @Default('') @JsonKey(name: 'previous_page_url') String? prevPageUrl,
  }) = _PaginationModel;

  factory PaginationModel.fromJson(Map<String, dynamic> json) =>
      _$PaginationModelFromJson(json);
}
