part of 'promotions_bloc.dart';

@freezed
class PromotionsState with _$PromotionsState {
  const factory PromotionsState.initial() = _Initial;
  const factory PromotionsState.loading() = _Loading;
  const factory PromotionsState.bannerLoading() = _BannerLoading;
  const factory PromotionsState.loaded({required List<Promotion> promotions}) = _Loaded;
  const factory PromotionsState.bannerPromotionsLoaded({required List<Promotion> promotions}) = _BannerPromotionsLoaded;
  const factory PromotionsState.failed(String errorMessage) = _Failed;
}
