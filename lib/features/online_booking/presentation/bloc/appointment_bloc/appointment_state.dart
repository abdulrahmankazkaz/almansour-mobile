part of 'appointment_bloc.dart';

@freezed
class AppointmentState with _$AppointmentState {
  const factory AppointmentState.initial() = _Initial;
  const factory AppointmentState.loading() = _Loading;
  const factory AppointmentState.loaded(List<BasicModel> appointmentType) = _Loaded;
  const factory AppointmentState.appointmentsLoaded(List<Appointment> appointments,bool hasReachMax) = _AppointmentsLoaded;
  const factory AppointmentState.createSuccessfully() = _CreateSuccessfully;
  const factory AppointmentState.createLoading() = _CreateLoading;
  const factory AppointmentState.invalidParameters(String validationMessage) = _InvalidParameters;
  const factory AppointmentState.failed(String errorMessage) = _Failed;
}
