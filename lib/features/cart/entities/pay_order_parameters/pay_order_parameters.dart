import 'package:json_annotation/json_annotation.dart';


part 'pay_order_parameters.g.dart';

@JsonSerializable()
class PayOrderParameters {

  @JsonKey(name: 'payment_method_id') int paymentMethodId;
  @JsonKey(name: 'id') int orderId;


  PayOrderParameters(
      {
        required this.paymentMethodId,
        required this.orderId,
      });

  Map<String, dynamic> toJson() => _$PayOrderParametersToJson(this);
}