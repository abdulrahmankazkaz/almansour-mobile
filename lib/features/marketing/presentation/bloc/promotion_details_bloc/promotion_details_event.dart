part of 'promotion_details_bloc.dart';

@freezed
class PromotionDetailsEvent with _$PromotionDetailsEvent {
  const factory PromotionDetailsEvent.started() = _Started;
  const factory PromotionDetailsEvent.setPromotionDetails(Promotion promotion) = _SetPromotionDetails;
}
