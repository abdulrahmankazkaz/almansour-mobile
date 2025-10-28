part of 'mobile_service_available_appointment_bloc.dart';

@freezed
class MobileServiceAvailableAppointmentEvent with _$MobileServiceAvailableAppointmentEvent {
  const factory MobileServiceAvailableAppointmentEvent.started() = _Started;
  const factory MobileServiceAvailableAppointmentEvent.get(int selectedStreetId) = _Get;
  const factory MobileServiceAvailableAppointmentEvent.determineAvailableTime(String dayDate) = _DetermineAvailableTime;
}
