part of 'center_location_bloc.dart';

@freezed
class CenterLocationEvent with _$CenterLocationEvent {
  const factory CenterLocationEvent.started() = _Started;
  const factory CenterLocationEvent.setCenterLocation(String lng,String lat) = _SetCenterLocation;
  const factory CenterLocationEvent.getServiceCenters() = _GetServiceCenters;
}
