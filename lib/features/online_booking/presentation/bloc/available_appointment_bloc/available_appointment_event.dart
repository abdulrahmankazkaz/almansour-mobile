part of 'available_appointment_bloc.dart';

@freezed
class AvailableAppointmentEvent with _$AvailableAppointmentEvent {
  const factory AvailableAppointmentEvent.started() = _Started;
  const factory AvailableAppointmentEvent.get() = _Get;
  const factory AvailableAppointmentEvent.determineAvailableTime(String dayDate) = _DetermineAvailableTime;

}
