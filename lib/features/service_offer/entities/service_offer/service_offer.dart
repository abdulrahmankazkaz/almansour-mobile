import 'package:freezed_annotation/freezed_annotation.dart';

import '../service_offer_item/service_offer_item.dart';

part 'service_offer.freezed.dart';
part 'service_offer.g.dart';

@freezed
class ServiceOffer with _$ServiceOffer {
  const factory ServiceOffer({
    @JsonKey(name: 'id') required int id,
    @JsonKey(name: 'title') @Default('') String title,
    @JsonKey(name: 'odometer') @Default(0) int odometer,
    @JsonKey(name: 'price') @Default(0) double price,
    @JsonKey(name: 'items') @Default([]) List<ServiceOfferItem> items,
    @JsonKey(name: 'year') @Default('') String year
  }) = _ServiceOffer;

  factory ServiceOffer.fromJson(Map<String, Object?> json) =>
      _$ServiceOfferFromJson(json);


}