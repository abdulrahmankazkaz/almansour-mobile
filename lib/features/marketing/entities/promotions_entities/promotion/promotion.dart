import 'package:freezed_annotation/freezed_annotation.dart';

import '../media/media.dart';
import '../pop_up/pop_up_entity.dart';

part 'promotion.freezed.dart';
part 'promotion.g.dart';

@freezed
class Promotion with _$Promotion {
  const factory Promotion({
    @JsonKey(name: 'id') required int id,
    @JsonKey(name: 'expire_date') @Default('') String expiryDate,
    @JsonKey(name: 'title') @Default('') String title,
    @JsonKey(name: 'description') @Default('') String description,
    @JsonKey(name: 'media') required Media media,
    @JsonKey(name: 'show_in_banner') @Default(false)  bool showedInBanner,
    @JsonKey(name: 'popup') PopUpEntity? popup,


  }) = _Promotion;

  factory Promotion.fromJson(Map<String, Object?> json) => _$PromotionFromJson(json);
}
