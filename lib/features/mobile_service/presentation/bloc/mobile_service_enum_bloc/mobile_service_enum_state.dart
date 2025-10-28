part of 'mobile_service_enum_bloc.dart';

@freezed
class MobileServiceEnumState with _$MobileServiceEnumState {
  const factory MobileServiceEnumState.initial() = _Initial;
  const factory MobileServiceEnumState.typesLoading() = _TypesLoading;
  const factory MobileServiceEnumState.citiesLoading() = _CitiesLoading;
  const factory MobileServiceEnumState.areasLoading() = _AreasLoading;
  const factory MobileServiceEnumState.streetsLoading() = _StreetsLoading;
  const factory MobileServiceEnumState.citiesLoaded(List<BasicModel> cities) = _CitiesLoaded;
  const factory MobileServiceEnumState.areasLoaded(List<BasicModel> areas) = _AreasLoaded;
  const factory MobileServiceEnumState.streetLoaded(List<BasicModel> streets) = _StreetLoaded;
  const factory MobileServiceEnumState.typesLoaded(List<BasicModel> types) = _TypesLoaded;
  const factory MobileServiceEnumState.failed(String errorMessage) = _Failed;
}
