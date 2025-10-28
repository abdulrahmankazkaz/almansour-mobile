import 'package:freezed_annotation/freezed_annotation.dart';

import 'order_details_total.dart';

part 'order_details.freezed.dart';
part 'order_details.g.dart';

@freezed
class OrderDetails with _$OrderDetails {
  const factory OrderDetails({
    @JsonKey(name: 'totals') required OrderDetailsTotal totals,
  }) = _OrderDetails;

  factory OrderDetails.fromJson(Map<String, dynamic> json) =>
      _$OrderDetailsFromJson(json);

}