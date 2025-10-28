part of 'promotion_details_bloc.dart';

@freezed
class PromotionDetailsState with _$PromotionDetailsState {
  const factory PromotionDetailsState.initial() = _Initial;
  const factory PromotionDetailsState.loading() = _Loading;
  const factory PromotionDetailsState.loaded(Promotion promotion) = _Loaded;
  const factory PromotionDetailsState.failed(String errorMessage) = _Failed;
}
