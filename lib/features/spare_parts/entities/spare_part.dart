import 'package:freezed_annotation/freezed_annotation.dart';

part 'spare_part.freezed.dart';
part 'spare_part.g.dart';

@freezed
class SparePart with _$SparePart {
  const factory SparePart({
    @JsonKey(name: 'id') int? id,
    @JsonKey(name: 'name') String? name,
    @JsonKey(name: 'price') double? price,
  }) = _SparePart;

  factory SparePart.fromJson(Map<String, Object?> json) =>
      _$SparePartFromJson(json);


}