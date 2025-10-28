part of 'odometer_bloc.dart';

@freezed
class OdometerEvent with _$OdometerEvent {
  const factory OdometerEvent.started() = _Started;
  const factory OdometerEvent.update(OdometerParameters parameters) = _Update;
}
