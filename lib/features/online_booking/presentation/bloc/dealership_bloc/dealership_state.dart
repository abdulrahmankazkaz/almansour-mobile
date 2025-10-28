part of 'dealership_bloc.dart';

@freezed
class DealershipState with _$DealershipState {
  const factory DealershipState.initial() = _Initial;
  const factory DealershipState.loading() = _Loading;
  const factory DealershipState.loaded(List<Dealership> dealerships) = _Loaded;
  const factory DealershipState.failed(String errorMessage) = _Failed;

}
