part of 'promotions_bloc.dart';

@freezed
class PromotionsEvent with _$PromotionsEvent {
  const factory PromotionsEvent.started() = _Started;
  const factory PromotionsEvent.getPromotions() = _GetPromotions;
  const factory PromotionsEvent.getBannerPromotions() = _GetBannerPromotions;
  const factory PromotionsEvent.showPromotion(int id) = _ShowPromotions;
}
