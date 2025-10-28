import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mac_mobile/core/models/basic_models/basic_model/basic_model.dart';
import 'package:mac_mobile/features/cart/entities/cart_item/cart_item.dart';


import '../order_details/order_details_total.dart';

part 'order_entity.freezed.dart';
part 'order_entity.g.dart';

@freezed
class OrderEntity with _$OrderEntity {
  const factory OrderEntity({
    @JsonKey(name: 'id') required int id,
    @JsonKey(name: 'items') required List<CartItem> items,
    @JsonKey(name: 'status') required BasicModel status,
    @JsonKey(name: 'type') required BasicModel type,
    @JsonKey(name: 'payment_method')  BasicModel? paymentMethod,
    @JsonKey(name: 'created_at') required DateTime date,
    @JsonKey(name: 'totals') required OrderDetailsTotal totals,
    @JsonKey(name: 'is_rated') required bool isRated,
    @JsonKey(name: 'dealership') String? dealership,
  }) = _OrderEntity;

  factory OrderEntity.fromJson(Map<String, dynamic> json) =>
      _$OrderEntityFromJson(json);

}