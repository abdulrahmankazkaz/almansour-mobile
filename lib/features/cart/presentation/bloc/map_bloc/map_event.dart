part of 'map_bloc.dart';

@freezed
class MapEvent with _$MapEvent {
  const factory MapEvent.started() = _Started;
  const factory MapEvent.requestPermission(void Function(String lng,String lat) function) = _RequestPermission;
  const factory MapEvent.getCurrentLocation() = _GetCurrentLocation;
}
