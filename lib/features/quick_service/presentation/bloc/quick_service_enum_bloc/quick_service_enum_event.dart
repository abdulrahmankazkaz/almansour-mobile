part of 'quick_service_enum_bloc.dart';

@freezed
class QuickServiceEnumEvent with _$QuickServiceEnumEvent {
  const factory QuickServiceEnumEvent.started() = _Started;
  const factory QuickServiceEnumEvent.getCities() = _GetCities;
  const factory QuickServiceEnumEvent.getDealerships(int cityId) = _GetDealerships;
  const factory QuickServiceEnumEvent.getServices() = _GetServices;
}
