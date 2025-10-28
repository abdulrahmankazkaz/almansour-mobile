import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../core/models/basic_models/basic_model/basic_model.dart';

part 'dealership.freezed.dart';
part 'dealership.g.dart';

@freezed
class Dealership with _$Dealership {
  const Dealership._();
  const factory Dealership({
    @Default(-1) int id,
    @JsonKey(name: 'name') String? name,
    @JsonKey(name: 'type') BasicModel? type,
    @JsonKey(name: 'image') String? image,
    @JsonKey(name: 'longitude') String? lng,
    @JsonKey(name: 'latitude') String? lat
  }) = _Dealership;
  factory Dealership.fromJson(Map<String, Object?> json) => _$DealershipFromJson(json);
}
