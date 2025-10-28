import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mac_mobile/core/models/basic_models/basic_model/basic_model.dart';

part 'customer_verify.freezed.dart';
part 'customer_verify.g.dart';

@freezed
class CustomerVerify with _$CustomerVerify {
  const factory CustomerVerify({
    @JsonKey(name: 'id') int? id,
    @JsonKey(name: 'mobile') String? mobileNumber,
    @JsonKey(name: 'status') required BasicModel status,
  }) = _CustomerVerify;

  factory CustomerVerify.fromJson(Map<String, Object?> json) =>
      _$CustomerVerifyFromJson(json);
}
