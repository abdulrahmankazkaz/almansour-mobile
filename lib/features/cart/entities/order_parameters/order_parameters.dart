import 'package:json_annotation/json_annotation.dart';

import '../order_item/order_item.dart';

part 'order_parameters.g.dart';

@JsonSerializable()
class OrderParameters {
  @JsonKey(name: 'items') List<OrderItem>? items;
  @JsonKey(name: 'longitude') String? long;
  @JsonKey(name: 'latitude') String? lat;
  @JsonKey(name: 'payment_method_id') int paymentMethodId;
  @JsonKey(name: 'type_id') int? orderTypeId;
  @JsonKey(name: 'dealership_id') int? dealershipId;
  @JsonKey(name: 'note') String? note;


  OrderParameters(
      { this.items,
        required this.paymentMethodId,
        this.orderTypeId,
        this.dealershipId,
        this.long,
        this.lat,
        this.note,
      });

  Map<String, dynamic> toJson() => _$OrderParametersToJson(this);
}