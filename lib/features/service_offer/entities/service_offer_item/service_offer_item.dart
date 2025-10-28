import 'package:freezed_annotation/freezed_annotation.dart';

part 'service_offer_item.freezed.dart';
part 'service_offer_item.g.dart';

@freezed
class ServiceOfferItem with _$ServiceOfferItem {
  const factory ServiceOfferItem({
    @JsonKey(name: 'id') required int id,
    @JsonKey(name: 'description') @Default('') String description,
  }) = _ServiceOfferItem;

  factory ServiceOfferItem.fromJson(Map<String, Object?> json) =>
      _$ServiceOfferItemFromJson(json);


}