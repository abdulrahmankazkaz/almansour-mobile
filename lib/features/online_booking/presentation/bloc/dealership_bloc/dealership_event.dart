part of 'dealership_bloc.dart';

@freezed
class DealershipEvent with _$DealershipEvent {
  const factory DealershipEvent.started() = _Started;
  const factory DealershipEvent.getDealership() = _GetDealership;
  const factory DealershipEvent.getInternalDealership() = _GetInternalDealership;
}
