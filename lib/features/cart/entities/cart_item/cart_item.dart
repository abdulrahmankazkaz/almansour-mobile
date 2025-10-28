import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mac_mobile/features/spare_parts/entities/spare_part.dart';

part 'cart_item.freezed.dart';
part 'cart_item.g.dart';

@freezed
class CartItem with _$CartItem {
  const factory CartItem({
    @JsonKey(name: 'spare_part') required SparePart sparePart,
    @JsonKey(name: 'quantity') @Default(-1) int quantity,
  }) = _CartItem;

  factory CartItem.fromJson(Map<String, dynamic> json) =>
      _$CartItemFromJson(json);

}