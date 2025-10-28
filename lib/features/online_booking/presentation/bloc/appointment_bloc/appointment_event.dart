part of 'appointment_bloc.dart';

@freezed
class AppointmentEvent with _$AppointmentEvent {
  const factory AppointmentEvent.started() = _Started;
  const factory AppointmentEvent.getType() = _GetType;
  const factory AppointmentEvent.getAppointments(bool firstFetch) = _GetAppointments;
  const factory AppointmentEvent.create() = _CreateAppointment;
}
