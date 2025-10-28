import 'package:freezed_annotation/freezed_annotation.dart';

part 'order_success.freezed.dart';
part 'order_success.g.dart';

@freezed
class OrderSuccess with _$OrderSuccess {
  const factory OrderSuccess({
    @JsonKey(name: 'url') @Default('') String url,
  }) = _OrderSuccess;

  factory OrderSuccess.fromJson(Map<String, dynamic> json) =>
      _$OrderSuccessFromJson(json);

}