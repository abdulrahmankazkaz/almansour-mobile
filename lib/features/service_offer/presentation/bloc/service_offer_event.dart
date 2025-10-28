part of 'service_offer_bloc.dart';

@freezed
class ServiceOfferEvent with _$ServiceOfferEvent {
  const factory ServiceOfferEvent.started() = _Started;
  const factory ServiceOfferEvent.get() = _Get;
}
