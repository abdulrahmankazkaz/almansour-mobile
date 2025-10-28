part of 'map_bloc.dart';

@freezed
class MapState with _$MapState {
  const factory MapState.initial() = _Initial;
  const factory MapState.loading() = _Loading;
  const factory MapState.permissionGranted() = _PermissionGranted;
  const factory MapState.permissionDenied() = _PermissionDenied;
  const factory MapState.permissionDeniedForever() = _PermissionDeniedForever;
  const factory MapState.locationFetched(Position position) = _LocationFetched;
  const factory MapState.failed(String message) = _Failed;
}
