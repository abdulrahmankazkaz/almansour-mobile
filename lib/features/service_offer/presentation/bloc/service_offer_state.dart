part of 'service_offer_bloc.dart';

@freezed
class ServiceOfferState with _$ServiceOfferState {
  const factory ServiceOfferState.initial() = _Initial;
  const factory ServiceOfferState.loading() = _Loading;
  const factory ServiceOfferState.loaded(List<ServiceOffer> serviceOffers) = _Loaded;
  const factory ServiceOfferState.empty() = _Empty;
  const factory ServiceOfferState.failed(String errorMessage) = _Failed;
}
