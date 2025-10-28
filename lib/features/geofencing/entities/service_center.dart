import 'package:freezed_annotation/freezed_annotation.dart';


part 'service_center.freezed.dart';
part 'service_center.g.dart';

@freezed
class ServiceCenter with _$ServiceCenter {
  const ServiceCenter._();
  const factory ServiceCenter({
    @Default(-1) int id,
    @JsonKey(name: 'name') String? name,
    @JsonKey(name: 'longitude') String? lng,
    @JsonKey(name: 'latitude') String? lat
  }) = _ServiceCenter;
  factory ServiceCenter.fromJson(Map<String, Object?> json) => _$ServiceCenterFromJson(json);
}
