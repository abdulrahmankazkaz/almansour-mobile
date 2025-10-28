import 'package:freezed_annotation/freezed_annotation.dart';

part 'order_details_total.freezed.dart';
part 'order_details_total.g.dart';

@freezed
class OrderDetailsTotal with _$OrderDetailsTotal {
  const factory OrderDetailsTotal({
    @JsonKey(name: 'total_amount') required double total,
    @JsonKey(name: 'delivery') @Default(0) double delivery,
    @JsonKey(name: 'subtotal') required double subtotal,
    @JsonKey(name: 'total_discount') @Default(0) double discount,
    @JsonKey(name: 'discount') @Default(0) int discountPercentage,
    @JsonKey(name: 'tax') @Default(0) double tax,
  }) = _OrderDetailsTotal;

  factory OrderDetailsTotal.fromJson(Map<String, dynamic> json) =>
      _$OrderDetailsTotalFromJson(json);

}