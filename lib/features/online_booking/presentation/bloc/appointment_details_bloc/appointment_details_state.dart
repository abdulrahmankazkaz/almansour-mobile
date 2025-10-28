part of 'appointment_details_bloc.dart';

@freezed
class AppointmentDetailsState with _$AppointmentDetailsState {
  const factory AppointmentDetailsState.initial() = _Initial;
  const factory AppointmentDetailsState.loading() = _Loading;
  const factory AppointmentDetailsState.typeSelected(BasicModel type) = _TypeSelected;
  const factory AppointmentDetailsState.appointmentSelected(Appointment appointment) = _AppointmentSelected;
  const factory AppointmentDetailsState.failed(String failedMessage) = _Failed;
}
