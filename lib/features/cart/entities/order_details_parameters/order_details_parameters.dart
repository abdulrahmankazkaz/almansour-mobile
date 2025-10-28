import 'package:json_annotation/json_annotation.dart';

import '../order_item/order_item.dart';

part 'order_details_parameters.g.dart';

@JsonSerializable()
class OrderDetailsParameters {
  @JsonKey(name: 'items') List<OrderItem> items;
  @JsonKey(name: 'longitude') String? lng;
  @JsonKey(name: 'latitude') String? lat;
  @JsonKey(name: 'payment_method_id') int? paymentMethodId;
  @JsonKey(name: 'type_id') int? orderTypeId;
  @JsonKey(name: 'dealership_id') int? dealershipId;


  OrderDetailsParameters(
      {required this.items,
        this.paymentMethodId,
        this.lng,
        this.lat,
        this.orderTypeId,
        this.dealershipId
      });

  Map<String, dynamic> toJson() => _$OrderDetailsParametersToJson(this);
}