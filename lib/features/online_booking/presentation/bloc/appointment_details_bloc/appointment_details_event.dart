part of 'appointment_details_bloc.dart';

@freezed
class AppointmentDetailsEvent with _$AppointmentDetailsEvent {
  const factory AppointmentDetailsEvent.started() = _Started;
  const factory AppointmentDetailsEvent.selectType(BasicModel type) = _SelectType;
  const factory AppointmentDetailsEvent.selectAppointment(Appointment appointment) = _SelectAppointment;
  const factory AppointmentDetailsEvent.approveUpdated(ApproveUpdatedAppointmentParameters parameters) = _ApproveUpdated;
}
