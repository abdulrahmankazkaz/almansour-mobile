part of 'center_location_bloc.dart';

@freezed
class CenterLocationState with _$CenterLocationState {
  const factory CenterLocationState.initial() = _Initial;
  const factory CenterLocationState.loading() = _Loading;
  const factory CenterLocationState.loaded(String lng,String lat) = _Loaded;
  const factory CenterLocationState.centersLoaded(List<ServiceCenter> centers) = _CentersLoaded;
  const factory CenterLocationState.failed(String errorMessage) = _Failed;
}
