part of 'quick_service_enum_bloc.dart';

@freezed
class QuickServiceEnumState with _$QuickServiceEnumState {
  const factory QuickServiceEnumState.initial() = _Initial;
  const factory QuickServiceEnumState.citiesLoading() = _CitiesLoading;
  const factory QuickServiceEnumState.dealershipsLoading() = _DealershipsLoading;
  const factory QuickServiceEnumState.servicesLoading() = _ServicesLoading;
  const factory QuickServiceEnumState.citiesLoaded(List<BasicModel> cities) = _CitiesLoaded;
  const factory QuickServiceEnumState.dealershipsLoaded(List<BasicModel> dealerships) = _DealershipsLoaded;
  const factory QuickServiceEnumState.servicesLoaded(List<BasicModel> services) = _ServicesLoaded;
  const factory QuickServiceEnumState.failed(String failedMessage) = _Failed;
}
