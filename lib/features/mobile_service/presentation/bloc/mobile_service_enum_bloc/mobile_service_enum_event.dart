part of 'mobile_service_enum_bloc.dart';

@freezed
class MobileServiceEnumEvent with _$MobileServiceEnumEvent {
  const factory MobileServiceEnumEvent.started() = _Started;
  const factory MobileServiceEnumEvent.getCities() = _GetCities;
  const factory MobileServiceEnumEvent.getAreas(int cityId) = _GetAreas;
  const factory MobileServiceEnumEvent.getStreets(int areaId) = _GetStreets;
  const factory MobileServiceEnumEvent.getTypes() = _GetTypes;

}
